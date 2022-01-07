
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int rd_msg_spinlock; scalar_t__ rd_msg_fifo_tail; scalar_t__ rd_msg_fifo_head; int dev_state; } ;


 int ISHTP_DEV_RESETTING ;
 int ishtp_bus_remove_all_clients (struct ishtp_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ishtp_reset_handler(struct ishtp_device *dev)
{
 unsigned long flags;


 dev->dev_state = ISHTP_DEV_RESETTING;


 spin_lock_irqsave(&dev->rd_msg_spinlock, flags);
 dev->rd_msg_fifo_head = dev->rd_msg_fifo_tail = 0;
 spin_unlock_irqrestore(&dev->rd_msg_spinlock, flags);


 ishtp_bus_remove_all_clients(dev, 1);
}
