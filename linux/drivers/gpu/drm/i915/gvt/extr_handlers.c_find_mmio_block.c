
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_mmio_block; struct gvt_mmio_block* mmio_block; } ;
struct intel_gvt {TYPE_1__ mmio; } ;
struct gvt_mmio_block {unsigned long device; unsigned int size; int offset; } ;


 unsigned int i915_mmio_reg_offset (int ) ;
 unsigned long intel_gvt_get_device_type (struct intel_gvt*) ;

__attribute__((used)) static struct gvt_mmio_block *find_mmio_block(struct intel_gvt *gvt,
           unsigned int offset)
{
 unsigned long device = intel_gvt_get_device_type(gvt);
 struct gvt_mmio_block *block = gvt->mmio.mmio_block;
 int num = gvt->mmio.num_mmio_block;
 int i;

 for (i = 0; i < num; i++, block++) {
  if (!(device & block->device))
   continue;
  if (offset >= i915_mmio_reg_offset(block->offset) &&
      offset < i915_mmio_reg_offset(block->offset) + block->size)
   return block;
 }
 return ((void*)0);
}
