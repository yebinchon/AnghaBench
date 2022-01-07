
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {TYPE_1__* port; } ;
struct mlx5_ib_dbg_cc_params {TYPE_3__* params; int root; } ;
struct TYPE_5__ {int dbg_root; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_6__ {int offset; int port_num; int dentry; struct mlx5_ib_dev* dev; } ;
struct TYPE_4__ {struct mlx5_ib_dbg_cc_params* dbg_cc_params; } ;


 int GFP_KERNEL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_IB_DBG_CC_MAX ;
 int cc_modify_allowed ;
 int cc_query_allowed ;
 int dbg_cc_fops ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (int ,int,int ,TYPE_3__*,int *) ;
 struct mlx5_ib_dbg_cc_params* kzalloc (int,int ) ;
 int mlx5_debugfs_root ;
 int mlx5_ib_cleanup_cong_debugfs (struct mlx5_ib_dev*,int) ;
 int * mlx5_ib_dbg_cc_name ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,int,int *) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;

void mlx5_ib_init_cong_debugfs(struct mlx5_ib_dev *dev, u8 port_num)
{
 struct mlx5_ib_dbg_cc_params *dbg_cc_params;
 struct mlx5_core_dev *mdev;
 int i;

 if (!mlx5_debugfs_root)
  return;


 mdev = mlx5_ib_get_native_port_mdev(dev, port_num + 1, ((void*)0));
 if (!mdev)
  return;

 if (!MLX5_CAP_GEN(mdev, cc_query_allowed) ||
     !MLX5_CAP_GEN(mdev, cc_modify_allowed))
  goto put_mdev;

 dbg_cc_params = kzalloc(sizeof(*dbg_cc_params), GFP_KERNEL);
 if (!dbg_cc_params)
  goto err;

 dev->port[port_num].dbg_cc_params = dbg_cc_params;

 dbg_cc_params->root = debugfs_create_dir("cc_params",
       mdev->priv.dbg_root);

 for (i = 0; i < MLX5_IB_DBG_CC_MAX; i++) {
  dbg_cc_params->params[i].offset = i;
  dbg_cc_params->params[i].dev = dev;
  dbg_cc_params->params[i].port_num = port_num;
  dbg_cc_params->params[i].dentry =
   debugfs_create_file(mlx5_ib_dbg_cc_name[i],
         0600, dbg_cc_params->root,
         &dbg_cc_params->params[i],
         &dbg_cc_fops);
 }

put_mdev:
 mlx5_ib_put_native_port_mdev(dev, port_num + 1);
 return;

err:
 mlx5_ib_warn(dev, "cong debugfs failure\n");
 mlx5_ib_cleanup_cong_debugfs(dev, port_num);
 mlx5_ib_put_native_port_mdev(dev, port_num + 1);





 return;
}
