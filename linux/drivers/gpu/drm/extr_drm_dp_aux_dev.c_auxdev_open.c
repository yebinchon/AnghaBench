
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct drm_dp_aux_dev* private_data; } ;
struct drm_dp_aux_dev {int dummy; } ;


 int ENODEV ;
 struct drm_dp_aux_dev* drm_dp_aux_dev_get_by_minor (unsigned int) ;
 unsigned int iminor (struct inode*) ;

__attribute__((used)) static int auxdev_open(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct drm_dp_aux_dev *aux_dev;

 aux_dev = drm_dp_aux_dev_get_by_minor(minor);
 if (!aux_dev)
  return -ENODEV;

 file->private_data = aux_dev;
 return 0;
}
