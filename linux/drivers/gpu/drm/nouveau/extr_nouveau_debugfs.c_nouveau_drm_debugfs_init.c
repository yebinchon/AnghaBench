
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
struct nouveau_drm {TYPE_1__ vbios; } ;
struct drm_minor {int debugfs_root; int dev; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int i_size; } ;
struct TYPE_6__ {int fops; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int NOUVEAU_DEBUGFS_ENTRIES ;
 int S_IRUGO ;
 int S_IWUSR ;
 TYPE_3__* d_inode (struct dentry*) ;
 struct dentry* debugfs_create_file (int ,int,int ,int ,int ) ;
 struct dentry* debugfs_lookup (char*,int ) ;
 int dput (struct dentry*) ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 TYPE_2__* nouveau_debugfs_files ;
 int nouveau_debugfs_list ;
 struct nouveau_drm* nouveau_drm (int ) ;

int
nouveau_drm_debugfs_init(struct drm_minor *minor)
{
 struct nouveau_drm *drm = nouveau_drm(minor->dev);
 struct dentry *dentry;
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(nouveau_debugfs_files); i++) {
  dentry = debugfs_create_file(nouveau_debugfs_files[i].name,
          S_IRUGO | S_IWUSR,
          minor->debugfs_root, minor->dev,
          nouveau_debugfs_files[i].fops);
  if (!dentry)
   return -ENOMEM;
 }

 ret = drm_debugfs_create_files(nouveau_debugfs_list,
           NOUVEAU_DEBUGFS_ENTRIES,
           minor->debugfs_root, minor);
 if (ret)
  return ret;




 dentry = debugfs_lookup("vbios.rom", minor->debugfs_root);
 if (!dentry)
  return 0;

 d_inode(dentry)->i_size = drm->vbios.length;
 dput(dentry);

 return 0;
}
