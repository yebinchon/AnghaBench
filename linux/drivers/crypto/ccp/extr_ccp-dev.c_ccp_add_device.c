
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int entry; } ;


 struct ccp_device* ccp_rr ;
 int ccp_unit_lock ;
 int ccp_units ;
 int list_add_tail (int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void ccp_add_device(struct ccp_device *ccp)
{
 unsigned long flags;

 write_lock_irqsave(&ccp_unit_lock, flags);
 list_add_tail(&ccp->entry, &ccp_units);
 if (!ccp_rr)



  ccp_rr = ccp;
 write_unlock_irqrestore(&ccp_unit_lock, flags);
}
