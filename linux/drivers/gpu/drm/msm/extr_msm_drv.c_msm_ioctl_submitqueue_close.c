
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_file {int driver_priv; } ;
struct drm_device {int dummy; } ;


 int msm_submitqueue_remove (int ,int ) ;

__attribute__((used)) static int msm_ioctl_submitqueue_close(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 u32 id = *(u32 *) data;

 return msm_submitqueue_remove(file->driver_priv, id);
}
