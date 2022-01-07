
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {int irq; } ;


 int synchronize_irq (int ) ;

void intel_synchronize_irq(struct drm_i915_private *i915)
{
 synchronize_irq(i915->drm.pdev->irq);
}
