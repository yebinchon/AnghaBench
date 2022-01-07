
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igt_spinner {int gt; int * batch; } ;


 int MI_BATCH_BUFFER_END ;
 int intel_gt_chipset_flush (int ) ;

void igt_spinner_end(struct igt_spinner *spin)
{
 *spin->batch = MI_BATCH_BUFFER_END;
 intel_gt_chipset_flush(spin->gt);
}
