
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__* mtrr_handles; } ;
typedef TYPE_1__ drm_savage_private_t ;


 int arch_phys_wc_del (scalar_t__) ;

void savage_driver_lastclose(struct drm_device *dev)
{
 drm_savage_private_t *dev_priv = dev->dev_private;
 int i;

 for (i = 0; i < 3; ++i) {
  arch_phys_wc_del(dev_priv->mtrr_handles[i]);
  dev_priv->mtrr_handles[i] = 0;
 }
}
