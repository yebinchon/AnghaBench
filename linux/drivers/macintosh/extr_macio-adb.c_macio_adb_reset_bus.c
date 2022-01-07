
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int ADB_RST ;
 TYPE_2__* adb ;
 int in_8 (int *) ;
 int macio_lock ;
 int out_8 (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int macio_adb_reset_bus(void)
{
 unsigned long flags;
 int timeout = 1000000;






 spin_lock_irqsave(&macio_lock, flags);
 out_8(&adb->ctrl.r, in_8(&adb->ctrl.r) | ADB_RST);
 while ((in_8(&adb->ctrl.r) & ADB_RST) != 0) {
  if (--timeout == 0) {
   out_8(&adb->ctrl.r, in_8(&adb->ctrl.r) & ~ADB_RST);
   spin_unlock_irqrestore(&macio_lock, flags);
   return -1;
  }
 }
 spin_unlock_irqrestore(&macio_lock, flags);
 return 0;
}
