
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ drm_max_vblank_count (struct drm_device*,unsigned int) ;

__attribute__((used)) static u32 drm_vblank_no_hw_counter(struct drm_device *dev, unsigned int pipe)
{
 WARN_ON_ONCE(drm_max_vblank_count(dev, pipe) != 0);
 return 0;
}
