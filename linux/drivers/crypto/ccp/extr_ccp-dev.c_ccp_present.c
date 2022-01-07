
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int ccp_unit_lock ;
 int ccp_units ;
 int list_empty (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ccp_present(void)
{
 unsigned long flags;
 int ret;

 read_lock_irqsave(&ccp_unit_lock, flags);
 ret = list_empty(&ccp_units);
 read_unlock_irqrestore(&ccp_unit_lock, flags);

 return ret ? -ENODEV : 0;
}
