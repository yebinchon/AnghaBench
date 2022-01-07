
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dax_device {int dummy; } ;
struct TYPE_5__ {int mnt_sb; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int SLAB_ACCOUNT ;
 int SLAB_HWCACHE_ALIGN ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int dax_cache ;
 int dax_fs_type ;
 TYPE_1__* dax_mnt ;
 int dax_superblock ;
 int init_once ;
 TYPE_1__* kern_mount (int *) ;
 int kmem_cache_create (char*,int,int ,int,int ) ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static int dax_fs_init(void)
{
 int rc;

 dax_cache = kmem_cache_create("dax_cache", sizeof(struct dax_device), 0,
   (SLAB_HWCACHE_ALIGN|SLAB_RECLAIM_ACCOUNT|
    SLAB_MEM_SPREAD|SLAB_ACCOUNT),
   init_once);
 if (!dax_cache)
  return -ENOMEM;

 dax_mnt = kern_mount(&dax_fs_type);
 if (IS_ERR(dax_mnt)) {
  rc = PTR_ERR(dax_mnt);
  goto err_mount;
 }
 dax_superblock = dax_mnt->mnt_sb;

 return 0;

 err_mount:
 kmem_cache_destroy(dax_cache);

 return rc;
}
