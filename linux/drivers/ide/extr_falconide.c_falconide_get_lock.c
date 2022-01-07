
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int falconide_intr_lock ;
 scalar_t__ in_interrupt () ;
 int panic (char*) ;
 int stdma_lock (int ,void*) ;

__attribute__((used)) static void falconide_get_lock(irq_handler_t handler, void *data)
{
 if (falconide_intr_lock == 0) {
  if (in_interrupt() > 0)
   panic("Falcon IDE hasn't ST-DMA lock in interrupt");
  stdma_lock(handler, data);
  falconide_intr_lock = 1;
 }
}
