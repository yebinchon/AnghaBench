
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int start; } ;
struct TYPE_6__ {int color_adjust; } ;
struct TYPE_9__ {int is_ggtt; int (* cleanup ) (TYPE_4__*) ;TYPE_1__ mm; int has_read_only; struct drm_i915_private* i915; } ;
struct i915_ggtt {int mappable_end; TYPE_2__ gmadr; int mtrr; TYPE_4__ vm; int iomap; } ;
struct TYPE_8__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;


 int EIO ;
 int HAS_LLC (struct drm_i915_private*) ;
 int HAS_PPGTT (struct drm_i915_private*) ;
 int IS_VALLEYVIEW (struct drm_i915_private*) ;
 int VM_CLASS_GGTT ;
 int arch_phys_wc_add (int ,int ) ;
 int i915_address_space_init (TYPE_4__*,int ) ;
 int i915_ggtt_init_fences (struct i915_ggtt*) ;
 int i915_gtt_color_adjust ;
 int io_mapping_init_wc (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int ggtt_init_hw(struct i915_ggtt *ggtt)
{
 struct drm_i915_private *i915 = ggtt->vm.i915;
 int ret = 0;

 mutex_lock(&i915->drm.struct_mutex);

 i915_address_space_init(&ggtt->vm, VM_CLASS_GGTT);

 ggtt->vm.is_ggtt = 1;


 ggtt->vm.has_read_only = IS_VALLEYVIEW(i915);

 if (!HAS_LLC(i915) && !HAS_PPGTT(i915))
  ggtt->vm.mm.color_adjust = i915_gtt_color_adjust;

 if (!io_mapping_init_wc(&ggtt->iomap,
    ggtt->gmadr.start,
    ggtt->mappable_end)) {
  ggtt->vm.cleanup(&ggtt->vm);
  ret = -EIO;
  goto out;
 }

 ggtt->mtrr = arch_phys_wc_add(ggtt->gmadr.start, ggtt->mappable_end);

 i915_ggtt_init_fences(ggtt);

out:
 mutex_unlock(&i915->drm.struct_mutex);

 return ret;
}
