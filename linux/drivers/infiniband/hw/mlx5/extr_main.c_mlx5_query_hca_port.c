
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_hca_vport_context {int cap_mask1; int cap_mask2; int init_type_reply; int subnet_timeout; int qkey_violation_counter; int pkey_violation_counter; int port_physical_state; int vport_state; int sm_sl; int sm_lid; int lmc; int lid; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {int port_cap_flags; int max_msg_sz; int max_vl_num; void* active_mtu; void* max_mtu; int active_speed; int active_width; int port_cap_flags2; int init_type_reply; int subnet_timeout; int qkey_viol_cntr; int bad_pkey_cntr; int pkey_tbl_len; int gid_tbl_len; int phys_state; int state; int sm_sl; int sm_lid; int lmc; int lid; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_PORT_CAP_MASK2_SUP ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int gid_table_size ;
 int kfree (struct mlx5_hca_vport_context*) ;
 struct mlx5_hca_vport_context* kzalloc (int,int ) ;
 int log_max_msg ;
 int mlx5_get_gid_table_len (int) ;
 void* mlx5_mtu_to_ib_mtu (int ) ;
 int mlx5_query_hca_vport_context (struct mlx5_core_dev*,int ,int ,int ,struct mlx5_hca_vport_context*) ;
 int mlx5_query_port_ib_proto_oper (struct mlx5_core_dev*,int *,int ) ;
 int mlx5_query_port_link_width_oper (struct mlx5_core_dev*,int *,int ) ;
 int mlx5_query_port_max_mtu (struct mlx5_core_dev*,int *,int ) ;
 int mlx5_query_port_oper_mtu (struct mlx5_core_dev*,int *,int ) ;
 int mlx5_query_port_vl_hw_cap (struct mlx5_core_dev*,int *,int ) ;
 int mlx5_to_sw_pkey_sz (int) ;
 int pkey_table_size ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;
 int translate_active_width (struct ib_device*,int ,int *) ;
 int translate_max_vl_num (struct ib_device*,int ,int *) ;

__attribute__((used)) static int mlx5_query_hca_port(struct ib_device *ibdev, u8 port,
          struct ib_port_attr *props)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;
 struct mlx5_hca_vport_context *rep;
 u16 max_mtu;
 u16 oper_mtu;
 int err;
 u8 ib_link_width_oper;
 u8 vl_hw_cap;

 rep = kzalloc(sizeof(*rep), GFP_KERNEL);
 if (!rep) {
  err = -ENOMEM;
  goto out;
 }



 err = mlx5_query_hca_vport_context(mdev, 0, port, 0, rep);
 if (err)
  goto out;

 props->lid = rep->lid;
 props->lmc = rep->lmc;
 props->sm_lid = rep->sm_lid;
 props->sm_sl = rep->sm_sl;
 props->state = rep->vport_state;
 props->phys_state = rep->port_physical_state;
 props->port_cap_flags = rep->cap_mask1;
 props->gid_tbl_len = mlx5_get_gid_table_len(MLX5_CAP_GEN(mdev, gid_table_size));
 props->max_msg_sz = 1 << MLX5_CAP_GEN(mdev, log_max_msg);
 props->pkey_tbl_len = mlx5_to_sw_pkey_sz(MLX5_CAP_GEN(mdev, pkey_table_size));
 props->bad_pkey_cntr = rep->pkey_violation_counter;
 props->qkey_viol_cntr = rep->qkey_violation_counter;
 props->subnet_timeout = rep->subnet_timeout;
 props->init_type_reply = rep->init_type_reply;

 if (props->port_cap_flags & IB_PORT_CAP_MASK2_SUP)
  props->port_cap_flags2 = rep->cap_mask2;

 err = mlx5_query_port_link_width_oper(mdev, &ib_link_width_oper, port);
 if (err)
  goto out;

 translate_active_width(ibdev, ib_link_width_oper, &props->active_width);

 err = mlx5_query_port_ib_proto_oper(mdev, &props->active_speed, port);
 if (err)
  goto out;

 mlx5_query_port_max_mtu(mdev, &max_mtu, port);

 props->max_mtu = mlx5_mtu_to_ib_mtu(max_mtu);

 mlx5_query_port_oper_mtu(mdev, &oper_mtu, port);

 props->active_mtu = mlx5_mtu_to_ib_mtu(oper_mtu);

 err = mlx5_query_port_vl_hw_cap(mdev, &vl_hw_cap, port);
 if (err)
  goto out;

 err = translate_max_vl_num(ibdev, vl_hw_cap,
       &props->max_vl_num);
out:
 kfree(rep);
 return err;
}
