
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gemfs; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int kern_unmount (int ) ;

void i915_gemfs_fini(struct drm_i915_private *i915)
{
 kern_unmount(i915->mm.gemfs);
}
