
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rqs_cnt; int events_cnt; struct mlx5_ib_dbg_delay_drop* dbg; } ;
struct mlx5_ib_dev {TYPE_3__ delay_drop; TYPE_2__* mdev; } ;
struct mlx5_ib_dbg_delay_drop {int timeout_debugfs; int dir_debugfs; void* rqs_cnt_debugfs; void* events_cnt_debugfs; } ;
struct TYPE_4__ {int dbg_root; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* debugfs_create_atomic_t (char*,int,int ,int *) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,TYPE_3__*,int *) ;
 int delay_drop_debugfs_cleanup (struct mlx5_ib_dev*) ;
 int fops_delay_drop_timeout ;
 struct mlx5_ib_dbg_delay_drop* kzalloc (int,int ) ;
 int mlx5_debugfs_root ;

__attribute__((used)) static int delay_drop_debugfs_init(struct mlx5_ib_dev *dev)
{
 struct mlx5_ib_dbg_delay_drop *dbg;

 if (!mlx5_debugfs_root)
  return 0;

 dbg = kzalloc(sizeof(*dbg), GFP_KERNEL);
 if (!dbg)
  return -ENOMEM;

 dev->delay_drop.dbg = dbg;

 dbg->dir_debugfs =
  debugfs_create_dir("delay_drop",
       dev->mdev->priv.dbg_root);
 if (!dbg->dir_debugfs)
  goto out_debugfs;

 dbg->events_cnt_debugfs =
  debugfs_create_atomic_t("num_timeout_events", 0400,
     dbg->dir_debugfs,
     &dev->delay_drop.events_cnt);
 if (!dbg->events_cnt_debugfs)
  goto out_debugfs;

 dbg->rqs_cnt_debugfs =
  debugfs_create_atomic_t("num_rqs", 0400,
     dbg->dir_debugfs,
     &dev->delay_drop.rqs_cnt);
 if (!dbg->rqs_cnt_debugfs)
  goto out_debugfs;

 dbg->timeout_debugfs =
  debugfs_create_file("timeout", 0600,
        dbg->dir_debugfs,
        &dev->delay_drop,
        &fops_delay_drop_timeout);
 if (!dbg->timeout_debugfs)
  goto out_debugfs;

 return 0;

out_debugfs:
 delay_drop_debugfs_cleanup(dev);
 return -ENOMEM;
}
