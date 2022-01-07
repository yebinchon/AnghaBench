
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct drm_file* private_data; int * f_op; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct amdgpu_fpriv {int dummy; } ;


 int EINVAL ;
 int amdgpu_driver_kms_fops ;

int amdgpu_file_to_fpriv(struct file *filp, struct amdgpu_fpriv **fpriv)
{
        struct drm_file *file;

 if (!filp)
  return -EINVAL;

 if (filp->f_op != &amdgpu_driver_kms_fops) {
  return -EINVAL;
 }

 file = filp->private_data;
 *fpriv = file->driver_priv;
 return 0;
}
