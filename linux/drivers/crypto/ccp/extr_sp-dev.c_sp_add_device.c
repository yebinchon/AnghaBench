
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int entry; } ;


 int list_add_tail (int *,int *) ;
 int sp_unit_lock ;
 int sp_units ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sp_add_device(struct sp_device *sp)
{
 unsigned long flags;

 write_lock_irqsave(&sp_unit_lock, flags);

 list_add_tail(&sp->entry, &sp_units);

 write_unlock_irqrestore(&sp_unit_lock, flags);
}
