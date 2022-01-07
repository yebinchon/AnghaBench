
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fd {TYPE_1__* file; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int syncobj_table_lock; int syncobj_idr; } ;
struct TYPE_2__ {struct drm_syncobj* private_data; int * f_op; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int drm_syncobj_file_fops ;
 int drm_syncobj_get (struct drm_syncobj*) ;
 int drm_syncobj_put (struct drm_syncobj*) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int idr_alloc (int *,struct drm_syncobj*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int drm_syncobj_fd_to_handle(struct drm_file *file_private,
        int fd, u32 *handle)
{
 struct drm_syncobj *syncobj;
 struct fd f = fdget(fd);
 int ret;

 if (!f.file)
  return -EINVAL;

 if (f.file->f_op != &drm_syncobj_file_fops) {
  fdput(f);
  return -EINVAL;
 }


 syncobj = f.file->private_data;
 drm_syncobj_get(syncobj);

 idr_preload(GFP_KERNEL);
 spin_lock(&file_private->syncobj_table_lock);
 ret = idr_alloc(&file_private->syncobj_idr, syncobj, 1, 0, GFP_NOWAIT);
 spin_unlock(&file_private->syncobj_table_lock);
 idr_preload_end();

 if (ret > 0) {
  *handle = ret;
  ret = 0;
 } else
  drm_syncobj_put(syncobj);

 fdput(f);
 return ret;
}
