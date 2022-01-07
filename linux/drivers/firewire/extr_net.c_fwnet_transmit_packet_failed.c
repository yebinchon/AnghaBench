
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fwnet_packet_task {int enqueued; scalar_t__ outstanding_pkts; struct fwnet_device* dev; } ;
struct fwnet_device {int lock; TYPE_2__* netdev; } ;
struct TYPE_3__ {int tx_errors; int tx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int dec_queued_datagrams (struct fwnet_device*) ;
 int fwnet_free_ptask (struct fwnet_packet_task*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fwnet_transmit_packet_failed(struct fwnet_packet_task *ptask)
{
 struct fwnet_device *dev = ptask->dev;
 unsigned long flags;
 bool free;

 spin_lock_irqsave(&dev->lock, flags);


 ptask->outstanding_pkts = 0;


 free = ptask->enqueued;
 if (free)
  dec_queued_datagrams(dev);

 dev->netdev->stats.tx_dropped++;
 dev->netdev->stats.tx_errors++;

 spin_unlock_irqrestore(&dev->lock, flags);

 if (free)
  fwnet_free_ptask(ptask);
}
