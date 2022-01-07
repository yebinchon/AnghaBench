
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int tilcdc_irqstatus_reg (struct drm_device*) ;
 int tilcdc_write (struct drm_device*,int ,int ) ;

__attribute__((used)) static inline void tilcdc_clear_irqstatus(struct drm_device *dev, u32 mask)
{
 tilcdc_write(dev, tilcdc_irqstatus_reg(dev), mask);
}
