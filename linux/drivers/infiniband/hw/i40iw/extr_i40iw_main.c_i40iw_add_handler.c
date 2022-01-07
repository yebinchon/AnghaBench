
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_handler {int list; } ;


 int i40iw_handler_lock ;
 int i40iw_handlers ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_add_handler(struct i40iw_handler *hdl)
{
 unsigned long flags;

 spin_lock_irqsave(&i40iw_handler_lock, flags);
 list_add(&hdl->list, &i40iw_handlers);
 spin_unlock_irqrestore(&i40iw_handler_lock, flags);
}
