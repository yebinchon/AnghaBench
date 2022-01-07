
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MAC_ADB ;
 int idle ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int macii_init_via () ;
 int macii_interrupt ;
 int macii_state ;
 int request_irq (int ,int ,int ,char*,int ) ;

int macii_init(void)
{
 unsigned long flags;
 int err;

 local_irq_save(flags);

 err = macii_init_via();
 if (err)
  goto out;

 err = request_irq(IRQ_MAC_ADB, macii_interrupt, 0, "ADB",
     macii_interrupt);
 if (err)
  goto out;

 macii_state = idle;
out:
 local_irq_restore(flags);
 return err;
}
