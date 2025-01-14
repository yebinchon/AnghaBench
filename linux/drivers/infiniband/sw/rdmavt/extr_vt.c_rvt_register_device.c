
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * dma_ops; } ;
struct TYPE_4__ {unsigned long long uverbs_cmd_mask; int num_comp_vectors; TYPE_3__ dev; int node_type; } ;
struct rvt_dev_info {TYPE_1__ ibdev; scalar_t__ n_pds_allocated; int n_pds_lock; int n_cqs_lock; scalar_t__ n_ahs_allocated; int n_ahs_lock; } ;


 int EINVAL ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_AH ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_POLL_CQ ;
 unsigned long long IB_USER_VERBS_CMD_POST_RECV ;
 unsigned long long IB_USER_VERBS_CMD_POST_SEND ;
 unsigned long long IB_USER_VERBS_CMD_POST_SRQ_RECV ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_AH ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_REG_MR ;
 unsigned long long IB_USER_VERBS_CMD_REQ_NOTIFY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_RESIZE_CQ ;
 int RDMA_NODE_IB_CA ;
 int _VERB_IDX_MAX ;
 scalar_t__ check_support (struct rvt_dev_info*,int) ;
 int dev_name (TYPE_3__*) ;
 int dma_virt_ops ;
 int ib_register_device (TYPE_1__*,int ) ;
 int ib_set_device_ops (TYPE_1__*,int *) ;
 int pr_err (char*,...) ;
 int rvt_create_mad_agents (struct rvt_dev_info*) ;
 int rvt_dev_ops ;
 int rvt_driver_mcast_init (struct rvt_dev_info*) ;
 int rvt_driver_mr_init (struct rvt_dev_info*) ;
 int rvt_driver_qp_init (struct rvt_dev_info*) ;
 int rvt_driver_srq_init (struct rvt_dev_info*) ;
 int rvt_mmap_init (struct rvt_dev_info*) ;
 int rvt_mr_exit (struct rvt_dev_info*) ;
 int rvt_pr_err (struct rvt_dev_info*,char*) ;
 int rvt_pr_info (struct rvt_dev_info*,char*) ;
 int rvt_qp_exit (struct rvt_dev_info*) ;
 int rvt_wss_exit (struct rvt_dev_info*) ;
 int rvt_wss_init (struct rvt_dev_info*) ;
 int spin_lock_init (int *) ;
 int trace_rvt_dbg (struct rvt_dev_info*,char*) ;

int rvt_register_device(struct rvt_dev_info *rdi)
{
 int ret = 0, i;

 if (!rdi)
  return -EINVAL;





 for (i = 0; i < _VERB_IDX_MAX; i++)
  if (check_support(rdi, i)) {
   pr_err("Driver support req not met at %d\n", i);
   return -EINVAL;
  }

 ib_set_device_ops(&rdi->ibdev, &rvt_dev_ops);


 trace_rvt_dbg(rdi, "Driver attempting registration");
 rvt_mmap_init(rdi);


 ret = rvt_driver_qp_init(rdi);
 if (ret) {
  pr_err("Error in driver QP init.\n");
  return -EINVAL;
 }


 spin_lock_init(&rdi->n_ahs_lock);
 rdi->n_ahs_allocated = 0;


 rvt_driver_srq_init(rdi);


 rvt_driver_mcast_init(rdi);


 ret = rvt_driver_mr_init(rdi);
 if (ret) {
  pr_err("Error in driver MR init.\n");
  goto bail_no_mr;
 }


 ret = rvt_wss_init(rdi);
 if (ret) {
  rvt_pr_err(rdi, "Error in WSS init.\n");
  goto bail_mr;
 }


 spin_lock_init(&rdi->n_cqs_lock);


 rdi->ibdev.dev.dma_ops = rdi->ibdev.dev.dma_ops ? : &dma_virt_ops;


 spin_lock_init(&rdi->n_pds_lock);
 rdi->n_pds_allocated = 0;







 rdi->ibdev.uverbs_cmd_mask =
  (1ull << IB_USER_VERBS_CMD_GET_CONTEXT) |
  (1ull << IB_USER_VERBS_CMD_QUERY_DEVICE) |
  (1ull << IB_USER_VERBS_CMD_QUERY_PORT) |
  (1ull << IB_USER_VERBS_CMD_ALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_DEALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_CREATE_AH) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_AH) |
  (1ull << IB_USER_VERBS_CMD_QUERY_AH) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_AH) |
  (1ull << IB_USER_VERBS_CMD_REG_MR) |
  (1ull << IB_USER_VERBS_CMD_DEREG_MR) |
  (1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
  (1ull << IB_USER_VERBS_CMD_CREATE_CQ) |
  (1ull << IB_USER_VERBS_CMD_RESIZE_CQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_CQ) |
  (1ull << IB_USER_VERBS_CMD_POLL_CQ) |
  (1ull << IB_USER_VERBS_CMD_REQ_NOTIFY_CQ) |
  (1ull << IB_USER_VERBS_CMD_CREATE_QP) |
  (1ull << IB_USER_VERBS_CMD_QUERY_QP) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
  (1ull << IB_USER_VERBS_CMD_POST_SEND) |
  (1ull << IB_USER_VERBS_CMD_POST_RECV) |
  (1ull << IB_USER_VERBS_CMD_ATTACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_DETACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_CREATE_SRQ) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_QUERY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_SRQ) |
  (1ull << IB_USER_VERBS_CMD_POST_SRQ_RECV);
 rdi->ibdev.node_type = RDMA_NODE_IB_CA;
 if (!rdi->ibdev.num_comp_vectors)
  rdi->ibdev.num_comp_vectors = 1;


 ret = ib_register_device(&rdi->ibdev, dev_name(&rdi->ibdev.dev));
 if (ret) {
  rvt_pr_err(rdi, "Failed to register driver with ib core.\n");
  goto bail_wss;
 }

 rvt_create_mad_agents(rdi);

 rvt_pr_info(rdi, "Registration with rdmavt done.\n");
 return ret;

bail_wss:
 rvt_wss_exit(rdi);
bail_mr:
 rvt_mr_exit(rdi);

bail_no_mr:
 rvt_qp_exit(rdi);

 return ret;
}
