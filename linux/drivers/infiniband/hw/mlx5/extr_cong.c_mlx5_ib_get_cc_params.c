
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
 int MLX5_ST_SZ_BYTES (int ) ;
 int congestion_parameters ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_cmd_query_cong_params (struct mlx5_core_dev*,int,void*,int) ;
 int mlx5_get_cc_param_val (void*,int) ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,scalar_t__,int *) ;
 int mlx5_ib_param_to_node (int) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,scalar_t__) ;
 int query_cong_params_out ;

__attribute__((used)) static int mlx5_ib_get_cc_params(struct mlx5_ib_dev *dev, u8 port_num,
     int offset, u32 *var)
{
 int outlen = MLX5_ST_SZ_BYTES(query_cong_params_out);
 void *out;
 void *field;
 int err;
 enum mlx5_ib_cong_node_type node;
 struct mlx5_core_dev *mdev;


 mdev = mlx5_ib_get_native_port_mdev(dev, port_num + 1, ((void*)0));
 if (!mdev)
  return -ENODEV;

 out = kvzalloc(outlen, GFP_KERNEL);
 if (!out) {
  err = -ENOMEM;
  goto alloc_err;
 }

 node = mlx5_ib_param_to_node(offset);

 err = mlx5_cmd_query_cong_params(mdev, node, out, outlen);
 if (err)
  goto free;

 field = MLX5_ADDR_OF(query_cong_params_out, out, congestion_parameters);
 *var = mlx5_get_cc_param_val(field, offset);

free:
 kvfree(out);
alloc_err:
 mlx5_ib_put_native_port_mdev(dev, port_num + 1);
 return err;
}
