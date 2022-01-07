
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int mnt_sb; } ;


 int DRM_ERROR (char*,int) ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* alloc_anon_inode (int ) ;
 int drm_fs_cnt ;
 TYPE_1__* drm_fs_mnt ;
 int drm_fs_type ;
 int simple_pin_fs (int *,TYPE_1__**,int *) ;
 int simple_release_fs (TYPE_1__**,int *) ;

__attribute__((used)) static struct inode *drm_fs_inode_new(void)
{
 struct inode *inode;
 int r;

 r = simple_pin_fs(&drm_fs_type, &drm_fs_mnt, &drm_fs_cnt);
 if (r < 0) {
  DRM_ERROR("Cannot mount pseudo fs: %d\n", r);
  return ERR_PTR(r);
 }

 inode = alloc_anon_inode(drm_fs_mnt->mnt_sb);
 if (IS_ERR(inode))
  simple_release_fs(&drm_fs_mnt, &drm_fs_cnt);

 return inode;
}
