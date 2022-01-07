
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int * virtual_start; } ;
struct TYPE_7__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_via_private_t ;
struct TYPE_8__ {int size; int func; int wait; } ;
typedef TYPE_3__ drm_via_cmdbuf_size_t ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int EAGAIN ;
 int EFAULT ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;


 int via_cmdbuf_lag (TYPE_2__*) ;
 int via_cmdbuf_space (TYPE_2__*) ;

__attribute__((used)) static int via_cmdbuf_size(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_cmdbuf_size_t *d_siz = data;
 int ret = 0;
 uint32_t tmp_size, count;
 drm_via_private_t *dev_priv;

 DRM_DEBUG("\n");
 LOCK_TEST_WITH_RETURN(dev, file_priv);

 dev_priv = (drm_via_private_t *) dev->dev_private;

 if (dev_priv->ring.virtual_start == ((void*)0)) {
  DRM_ERROR("called without initializing AGP ring buffer.\n");
  return -EFAULT;
 }

 count = 1000000;
 tmp_size = d_siz->size;
 switch (d_siz->func) {
 case 128:
  while (((tmp_size = via_cmdbuf_space(dev_priv)) < d_siz->size)
         && --count) {
   if (!d_siz->wait)
    break;
  }
  if (!count) {
   DRM_ERROR("VIA_CMDBUF_SPACE timed out.\n");
   ret = -EAGAIN;
  }
  break;
 case 129:
  while (((tmp_size = via_cmdbuf_lag(dev_priv)) > d_siz->size)
         && --count) {
   if (!d_siz->wait)
    break;
  }
  if (!count) {
   DRM_ERROR("VIA_CMDBUF_LAG timed out.\n");
   ret = -EAGAIN;
  }
  break;
 default:
  ret = -EFAULT;
 }
 d_siz->size = tmp_size;

 return ret;
}
