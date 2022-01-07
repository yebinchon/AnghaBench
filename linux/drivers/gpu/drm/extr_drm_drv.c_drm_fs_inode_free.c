
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int drm_fs_cnt ;
 int drm_fs_mnt ;
 int iput (struct inode*) ;
 int simple_release_fs (int *,int *) ;

__attribute__((used)) static void drm_fs_inode_free(struct inode *inode)
{
 if (inode) {
  iput(inode);
  simple_release_fs(&drm_fs_mnt, &drm_fs_cnt);
 }
}
