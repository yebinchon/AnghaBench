
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int tilcdc_read (struct drm_device*,int) ;
 int tilcdc_write (struct drm_device*,int,int) ;

__attribute__((used)) static inline void tilcdc_clear(struct drm_device *dev, u32 reg, u32 mask)
{
 tilcdc_write(dev, reg, tilcdc_read(dev, reg) & ~mask);
}
