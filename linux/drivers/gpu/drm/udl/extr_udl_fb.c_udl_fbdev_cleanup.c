
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_device {int * fbdev; } ;
struct drm_device {int dummy; } ;


 int kfree (int *) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int udl_fbdev_destroy (struct drm_device*,int *) ;

void udl_fbdev_cleanup(struct drm_device *dev)
{
 struct udl_device *udl = to_udl(dev);
 if (!udl->fbdev)
  return;

 udl_fbdev_destroy(dev, udl->fbdev);
 kfree(udl->fbdev);
 udl->fbdev = ((void*)0);
}
