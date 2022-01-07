
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_data {int suspended; int cmd_msg_lock; int read_active; int drain_complete; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_lock_irq (int ,int,int ) ;

__attribute__((used)) static void applespi_drain_reads(struct applespi_data *applespi)
{
 unsigned long flags;

 spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

 wait_event_lock_irq(applespi->drain_complete, !applespi->read_active,
       applespi->cmd_msg_lock);

 applespi->suspended = 1;

 spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);
}
