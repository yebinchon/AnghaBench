
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_qp {int reg_id; int ibqp; int port; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_flow_spec_ib {int size; int mask; int type; } ;
struct ib_flow_attr {int num_of_specs; size_t size; int port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_FLOW_DOMAIN_NIC ;
 int IB_FLOW_SPEC_IB ;
 int MLX4_FS_REGULAR ;
 int __mlx4_ib_create_flow (int *,struct ib_flow_attr*,int ,int ,int *) ;
 int __mlx4_ib_destroy_flow (int ,int ) ;
 int kfree (struct ib_flow_attr*) ;
 struct ib_flow_attr* kzalloc (size_t,int ) ;
 int memset (int *,int ,int) ;

int mlx4_ib_steer_qp_reg(struct mlx4_ib_dev *mdev, struct mlx4_ib_qp *mqp,
    int is_attach)
{
 int err;
 size_t flow_size;
 struct ib_flow_attr *flow = ((void*)0);
 struct ib_flow_spec_ib *ib_spec;

 if (is_attach) {
  flow_size = sizeof(struct ib_flow_attr) +
       sizeof(struct ib_flow_spec_ib);
  flow = kzalloc(flow_size, GFP_KERNEL);
  if (!flow)
   return -ENOMEM;
  flow->port = mqp->port;
  flow->num_of_specs = 1;
  flow->size = flow_size;
  ib_spec = (struct ib_flow_spec_ib *)(flow + 1);
  ib_spec->type = IB_FLOW_SPEC_IB;
  ib_spec->size = sizeof(struct ib_flow_spec_ib);

  memset(&ib_spec->mask, 0, sizeof(ib_spec->mask));

  err = __mlx4_ib_create_flow(&mqp->ibqp, flow,
         IB_FLOW_DOMAIN_NIC,
         MLX4_FS_REGULAR,
         &mqp->reg_id);
 } else {
  err = __mlx4_ib_destroy_flow(mdev->dev, mqp->reg_id);
 }
 kfree(flow);
 return err;
}
