
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_mmio_debug {int unclaimed_mmio_check; int lock; } ;


 int spin_lock_init (int *) ;

void
intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug)
{
 spin_lock_init(&mmio_debug->lock);
 mmio_debug->unclaimed_mmio_check = 1;
}
