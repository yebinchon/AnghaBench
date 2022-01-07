
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __i8042_command (unsigned char*,int) ;
 int i8042_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int i8042_command(unsigned char *param, int command)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&i8042_lock, flags);
 retval = __i8042_command(param, command);
 spin_unlock_irqrestore(&i8042_lock, flags);

 return retval;
}
