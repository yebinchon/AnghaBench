
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct drm_syncobj* private_data; } ;
struct drm_syncobj {int dummy; } ;


 int drm_syncobj_put (struct drm_syncobj*) ;

__attribute__((used)) static int drm_syncobj_file_release(struct inode *inode, struct file *file)
{
 struct drm_syncobj *syncobj = file->private_data;

 drm_syncobj_put(syncobj);
 return 0;
}
