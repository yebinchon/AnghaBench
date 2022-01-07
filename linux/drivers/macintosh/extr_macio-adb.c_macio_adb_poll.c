
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; } ;
struct TYPE_4__ {TYPE_1__ intr; } ;


 TYPE_2__* adb ;
 scalar_t__ in_8 (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int macio_adb_interrupt (int ,int *) ;

__attribute__((used)) static void macio_adb_poll(void)
{
 unsigned long flags;

 local_irq_save(flags);
 if (in_8(&adb->intr.r) != 0)
  macio_adb_interrupt(0, ((void*)0));
 local_irq_restore(flags);
}
