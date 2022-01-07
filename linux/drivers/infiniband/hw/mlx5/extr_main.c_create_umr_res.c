
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ib_qp* pd; struct ib_qp* cq; struct ib_qp* qp; int sem; } ;
struct mlx5_ib_dev {TYPE_2__ umrc; int ib_dev; } ;
struct TYPE_3__ {int max_send_sge; int max_send_wr; } ;
struct ib_qp_init_attr {int port_num; int qp_state; int path_mtu; struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; TYPE_1__ cap; int sq_sig_type; } ;
struct ib_qp_attr {int port_num; int qp_state; int path_mtu; struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; TYPE_1__ cap; int sq_sig_type; } ;
struct ib_qp {struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; int * uobject; struct ib_qp* real_qp; int * device; } ;
struct ib_pd {struct ib_pd* recv_cq; struct ib_pd* send_cq; void* qp_type; int * uobject; struct ib_pd* real_qp; int * device; } ;
struct ib_cq {struct ib_cq* recv_cq; struct ib_cq* send_cq; void* qp_type; int * uobject; struct ib_cq* real_qp; int * device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_MTU_256 ;
 int IB_POLL_SOFTIRQ ;
 int IB_QPS_INIT ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int IB_SIGNAL_ALL_WR ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int MAX_UMR_WR ;
 void* MLX5_IB_QPT_REG_UMR ;
 int PTR_ERR (struct ib_qp*) ;
 struct ib_qp* ib_alloc_cq (int *,int *,int,int ,int ) ;
 struct ib_qp* ib_alloc_pd (int *,int ) ;
 int ib_dealloc_pd (struct ib_qp*) ;
 int ib_free_cq (struct ib_qp*) ;
 int kfree (struct ib_qp_init_attr*) ;
 struct ib_qp_init_attr* kzalloc (int,int ) ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 struct ib_qp* mlx5_ib_create_qp (struct ib_qp*,struct ib_qp_init_attr*,int *) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*) ;
 int mlx5_ib_destroy_qp (struct ib_qp*,int *) ;
 int mlx5_ib_modify_qp (struct ib_qp*,struct ib_qp_init_attr*,int,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int mlx5_mr_cache_init (struct mlx5_ib_dev*) ;
 int sema_init (int *,int ) ;

__attribute__((used)) static int create_umr_res(struct mlx5_ib_dev *dev)
{
 struct ib_qp_init_attr *init_attr = ((void*)0);
 struct ib_qp_attr *attr = ((void*)0);
 struct ib_pd *pd;
 struct ib_cq *cq;
 struct ib_qp *qp;
 int ret;

 attr = kzalloc(sizeof(*attr), GFP_KERNEL);
 init_attr = kzalloc(sizeof(*init_attr), GFP_KERNEL);
 if (!attr || !init_attr) {
  ret = -ENOMEM;
  goto error_0;
 }

 pd = ib_alloc_pd(&dev->ib_dev, 0);
 if (IS_ERR(pd)) {
  mlx5_ib_dbg(dev, "Couldn't create PD for sync UMR QP\n");
  ret = PTR_ERR(pd);
  goto error_0;
 }

 cq = ib_alloc_cq(&dev->ib_dev, ((void*)0), 128, 0, IB_POLL_SOFTIRQ);
 if (IS_ERR(cq)) {
  mlx5_ib_dbg(dev, "Couldn't create CQ for sync UMR QP\n");
  ret = PTR_ERR(cq);
  goto error_2;
 }

 init_attr->send_cq = cq;
 init_attr->recv_cq = cq;
 init_attr->sq_sig_type = IB_SIGNAL_ALL_WR;
 init_attr->cap.max_send_wr = MAX_UMR_WR;
 init_attr->cap.max_send_sge = 1;
 init_attr->qp_type = MLX5_IB_QPT_REG_UMR;
 init_attr->port_num = 1;
 qp = mlx5_ib_create_qp(pd, init_attr, ((void*)0));
 if (IS_ERR(qp)) {
  mlx5_ib_dbg(dev, "Couldn't create sync UMR QP\n");
  ret = PTR_ERR(qp);
  goto error_3;
 }
 qp->device = &dev->ib_dev;
 qp->real_qp = qp;
 qp->uobject = ((void*)0);
 qp->qp_type = MLX5_IB_QPT_REG_UMR;
 qp->send_cq = init_attr->send_cq;
 qp->recv_cq = init_attr->recv_cq;

 attr->qp_state = IB_QPS_INIT;
 attr->port_num = 1;
 ret = mlx5_ib_modify_qp(qp, attr, IB_QP_STATE | IB_QP_PKEY_INDEX |
    IB_QP_PORT, ((void*)0));
 if (ret) {
  mlx5_ib_dbg(dev, "Couldn't modify UMR QP\n");
  goto error_4;
 }

 memset(attr, 0, sizeof(*attr));
 attr->qp_state = IB_QPS_RTR;
 attr->path_mtu = IB_MTU_256;

 ret = mlx5_ib_modify_qp(qp, attr, IB_QP_STATE, ((void*)0));
 if (ret) {
  mlx5_ib_dbg(dev, "Couldn't modify umr QP to rtr\n");
  goto error_4;
 }

 memset(attr, 0, sizeof(*attr));
 attr->qp_state = IB_QPS_RTS;
 ret = mlx5_ib_modify_qp(qp, attr, IB_QP_STATE, ((void*)0));
 if (ret) {
  mlx5_ib_dbg(dev, "Couldn't modify umr QP to rts\n");
  goto error_4;
 }

 dev->umrc.qp = qp;
 dev->umrc.cq = cq;
 dev->umrc.pd = pd;

 sema_init(&dev->umrc.sem, MAX_UMR_WR);
 ret = mlx5_mr_cache_init(dev);
 if (ret) {
  mlx5_ib_warn(dev, "mr cache init failed %d\n", ret);
  goto error_4;
 }

 kfree(attr);
 kfree(init_attr);

 return 0;

error_4:
 mlx5_ib_destroy_qp(qp, ((void*)0));
 dev->umrc.qp = ((void*)0);

error_3:
 ib_free_cq(cq);
 dev->umrc.cq = ((void*)0);

error_2:
 ib_dealloc_pd(pd);
 dev->umrc.pd = ((void*)0);

error_0:
 kfree(attr);
 kfree(init_attr);
 return ret;
}
