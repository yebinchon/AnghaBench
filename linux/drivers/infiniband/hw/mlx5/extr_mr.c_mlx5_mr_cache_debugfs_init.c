
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_mr_cache {void* root; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; scalar_t__ is_rep; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {char* name; int order; int miss; int cur; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {void* dbg_root; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int MAX_MR_CACHE_ENTRIES ;
 void* debugfs_create_dir (char*,void*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mlx5_cache_ent*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int limit_fops ;
 int mlx5_debugfs_root ;
 int size_fops ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void mlx5_mr_cache_debugfs_init(struct mlx5_ib_dev *dev)
{
 struct mlx5_mr_cache *cache = &dev->cache;
 struct mlx5_cache_ent *ent;
 struct dentry *dir;
 int i;

 if (!mlx5_debugfs_root || dev->is_rep)
  return;

 cache->root = debugfs_create_dir("mr_cache", dev->mdev->priv.dbg_root);

 for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++) {
  ent = &cache->ent[i];
  sprintf(ent->name, "%d", ent->order);
  dir = debugfs_create_dir(ent->name, cache->root);
  debugfs_create_file("size", 0600, dir, ent, &size_fops);
  debugfs_create_file("limit", 0600, dir, ent, &limit_fops);
  debugfs_create_u32("cur", 0400, dir, &ent->cur);
  debugfs_create_u32("miss", 0600, dir, &ent->miss);
 }
}
