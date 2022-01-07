
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* get_vblank_timestamp ) (struct drm_device*,unsigned int,int*,int *,int) ;} ;


 scalar_t__ drm_timestamp_precision ;
 int ktime_get () ;
 int stub1 (struct drm_device*,unsigned int,int*,int *,int) ;

__attribute__((used)) static bool
drm_get_last_vbltimestamp(struct drm_device *dev, unsigned int pipe,
     ktime_t *tvblank, bool in_vblank_irq)
{
 bool ret = 0;


 int max_error = (int) drm_timestamp_precision * 1000;


 if (dev->driver->get_vblank_timestamp && (max_error > 0))
  ret = dev->driver->get_vblank_timestamp(dev, pipe, &max_error,
       tvblank, in_vblank_irq);




 if (!ret)
  *tvblank = ktime_get();

 return ret;
}
