
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CMD_OP_MODIFY_CONG_PARAMS ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int cong_protocol ;
 int congestion_parameters ;
 int field_select ;
 int field_select_r_roce_rp ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_cmd_modify_cong_params (struct mlx5_core_dev*,void*,int) ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,scalar_t__,int *) ;
 int mlx5_ib_param_to_node (int) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,scalar_t__) ;
 int mlx5_ib_set_cc_param_mask_val (void*,int,int,int*) ;
 int modify_cong_params_in ;
 int opcode ;

__attribute__((used)) static int mlx5_ib_set_cc_params(struct mlx5_ib_dev *dev, u8 port_num,
     int offset, u32 var)
{
 int inlen = MLX5_ST_SZ_BYTES(modify_cong_params_in);
 void *in;
 void *field;
 enum mlx5_ib_cong_node_type node;
 struct mlx5_core_dev *mdev;
 u32 attr_mask = 0;
 int err;


 mdev = mlx5_ib_get_native_port_mdev(dev, port_num + 1, ((void*)0));
 if (!mdev)
  return -ENODEV;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in) {
  err = -ENOMEM;
  goto alloc_err;
 }

 MLX5_SET(modify_cong_params_in, in, opcode,
   MLX5_CMD_OP_MODIFY_CONG_PARAMS);

 node = mlx5_ib_param_to_node(offset);
 MLX5_SET(modify_cong_params_in, in, cong_protocol, node);

 field = MLX5_ADDR_OF(modify_cong_params_in, in, congestion_parameters);
 mlx5_ib_set_cc_param_mask_val(field, offset, var, &attr_mask);

 field = MLX5_ADDR_OF(modify_cong_params_in, in, field_select);
 MLX5_SET(field_select_r_roce_rp, field, field_select_r_roce_rp,
   attr_mask);

 err = mlx5_cmd_modify_cong_params(mdev, in, inlen);
 kvfree(in);
alloc_err:
 mlx5_ib_put_native_port_mdev(dev, port_num + 1);
 return err;
}
