
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int r128_do_cleanup_cce (struct drm_device*) ;

void r128_driver_lastclose(struct drm_device *dev)
{
 r128_do_cleanup_cce(dev);
}
