
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int cl_list_lock; } ;
struct ishtp_cl {struct ishtp_device* dev; } ;


 int ishtp_cl_free_rx_ring (struct ishtp_cl*) ;
 int ishtp_cl_free_tx_ring (struct ishtp_cl*) ;
 int kfree (struct ishtp_cl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ishtp_cl_free(struct ishtp_cl *cl)
{
 struct ishtp_device *dev;
 unsigned long flags;

 if (!cl)
  return;

 dev = cl->dev;
 if (!dev)
  return;

 spin_lock_irqsave(&dev->cl_list_lock, flags);
 ishtp_cl_free_rx_ring(cl);
 ishtp_cl_free_tx_ring(cl);
 kfree(cl);
 spin_unlock_irqrestore(&dev->cl_list_lock, flags);
}
