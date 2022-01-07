
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct drm_dp_aux_dev* private_data; } ;
struct drm_dp_aux_dev {int refcount; } ;


 int kref_put (int *,int ) ;
 int release_drm_dp_aux_dev ;

__attribute__((used)) static int auxdev_release(struct inode *inode, struct file *file)
{
 struct drm_dp_aux_dev *aux_dev = file->private_data;

 kref_put(&aux_dev->refcount, release_drm_dp_aux_dev);
 return 0;
}
