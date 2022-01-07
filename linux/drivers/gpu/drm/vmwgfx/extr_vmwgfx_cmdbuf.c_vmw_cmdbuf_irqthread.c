
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_cmdbuf_man_process (struct vmw_cmdbuf_man*) ;

void vmw_cmdbuf_irqthread(struct vmw_cmdbuf_man *man)
{
 spin_lock(&man->lock);
 vmw_cmdbuf_man_process(man);
 spin_unlock(&man->lock);
}
