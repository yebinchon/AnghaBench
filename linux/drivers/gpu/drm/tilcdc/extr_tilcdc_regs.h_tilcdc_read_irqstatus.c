
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int tilcdc_irqstatus_reg (struct drm_device*) ;
 int tilcdc_read (struct drm_device*,int ) ;

__attribute__((used)) static inline u32 tilcdc_read_irqstatus(struct drm_device *dev)
{
 return tilcdc_read(dev, tilcdc_irqstatus_reg(dev));
}
