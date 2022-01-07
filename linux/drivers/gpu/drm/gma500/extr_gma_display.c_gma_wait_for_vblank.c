
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int mdelay (int) ;

void gma_wait_for_vblank(struct drm_device *dev)
{

 mdelay(20);
}
