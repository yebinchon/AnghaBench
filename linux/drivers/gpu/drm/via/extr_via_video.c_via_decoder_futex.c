
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_via_sarea_t ;
struct TYPE_3__ {int * decoder_queue; int * sarea_priv; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {size_t lock; int func; int ms; int volatile val; } ;
typedef TYPE_2__ drm_via_futex_t ;


 int DRM_DEBUG (char*) ;
 int EFAULT ;
 int HZ ;


 size_t VIA_NR_XVMC_LOCKS ;
 int VIA_WAIT_ON (int,int ,int,int) ;
 scalar_t__ XVMCLOCKPTR (int *,size_t) ;
 int wake_up (int *) ;

int via_decoder_futex(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_futex_t *fx = data;
 volatile int *lock;
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 drm_via_sarea_t *sAPriv = dev_priv->sarea_priv;
 int ret = 0;

 DRM_DEBUG("\n");

 if (fx->lock >= VIA_NR_XVMC_LOCKS)
  return -EFAULT;

 lock = (volatile int *)XVMCLOCKPTR(sAPriv, fx->lock);

 switch (fx->func) {
 case 129:
  VIA_WAIT_ON(ret, dev_priv->decoder_queue[fx->lock],
       (fx->ms / 10) * (HZ / 100), *lock != fx->val);
  return ret;
 case 128:
  wake_up(&(dev_priv->decoder_queue[fx->lock]));
  return 0;
 }
 return 0;
}
