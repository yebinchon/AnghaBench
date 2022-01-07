
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct qedr_dev {int num_cnq; int dpi; int db_size; int db_phys_addr; int db_addr; int rdma_ctx; TYPE_3__* ops; int cdev; TYPE_2__* ndev; int iwarp_max_mtu; TYPE_1__* cnq_array; } ;
struct qed_rdma_start_in_params {int desired_cnq; int * mac_addr; int max_mtu; int cq_mode; struct qed_rdma_events* events; struct qed_rdma_cnq_params* cnq_pbl_list; } ;
struct qed_rdma_events {struct qedr_dev* context; int unaffiliated_event; int affiliated_event; } ;
struct qed_rdma_cnq_params {scalar_t__ pbl_ptr; int num_pbl_pages; } ;
struct qed_rdma_add_user_out_params {int dpi; int dpi_size; int dpi_phys_addr; int dpi_addr; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {int (* rdma_init ) (int ,struct qed_rdma_start_in_params*) ;int (* rdma_add_user ) (int ,struct qed_rdma_add_user_out_params*) ;} ;
struct TYPE_5__ {int dev_addr; int mtu; } ;
struct TYPE_4__ {int pbl; } ;


 int DP_ERR (struct qedr_dev*,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_RDMA_CQ_MODE_32_BITS ;
 int ether_addr_copy (int *,int ) ;
 int kfree (struct qed_rdma_start_in_params*) ;
 struct qed_rdma_start_in_params* kzalloc (int,int ) ;
 int qed_chain_get_page_cnt (int *) ;
 scalar_t__ qed_chain_get_pbl_phys (int *) ;
 int qedr_affiliated_event ;
 int qedr_set_device_attr (struct qedr_dev*) ;
 int qedr_unaffiliated_event ;
 int stub1 (int ,struct qed_rdma_start_in_params*) ;
 int stub2 (int ,struct qed_rdma_add_user_out_params*) ;

__attribute__((used)) static int qedr_init_hw(struct qedr_dev *dev)
{
 struct qed_rdma_add_user_out_params out_params;
 struct qed_rdma_start_in_params *in_params;
 struct qed_rdma_cnq_params *cur_pbl;
 struct qed_rdma_events events;
 dma_addr_t p_phys_table;
 u32 page_cnt;
 int rc = 0;
 int i;

 in_params = kzalloc(sizeof(*in_params), GFP_KERNEL);
 if (!in_params) {
  rc = -ENOMEM;
  goto out;
 }

 in_params->desired_cnq = dev->num_cnq;
 for (i = 0; i < dev->num_cnq; i++) {
  cur_pbl = &in_params->cnq_pbl_list[i];

  page_cnt = qed_chain_get_page_cnt(&dev->cnq_array[i].pbl);
  cur_pbl->num_pbl_pages = page_cnt;

  p_phys_table = qed_chain_get_pbl_phys(&dev->cnq_array[i].pbl);
  cur_pbl->pbl_ptr = (u64)p_phys_table;
 }

 events.affiliated_event = qedr_affiliated_event;
 events.unaffiliated_event = qedr_unaffiliated_event;
 events.context = dev;

 in_params->events = &events;
 in_params->cq_mode = QED_RDMA_CQ_MODE_32_BITS;
 in_params->max_mtu = dev->ndev->mtu;
 dev->iwarp_max_mtu = dev->ndev->mtu;
 ether_addr_copy(&in_params->mac_addr[0], dev->ndev->dev_addr);

 rc = dev->ops->rdma_init(dev->cdev, in_params);
 if (rc)
  goto out;

 rc = dev->ops->rdma_add_user(dev->rdma_ctx, &out_params);
 if (rc)
  goto out;

 dev->db_addr = out_params.dpi_addr;
 dev->db_phys_addr = out_params.dpi_phys_addr;
 dev->db_size = out_params.dpi_size;
 dev->dpi = out_params.dpi;

 rc = qedr_set_device_attr(dev);
out:
 kfree(in_params);
 if (rc)
  DP_ERR(dev, "Init HW Failed rc = %d\n", rc);

 return rc;
}
