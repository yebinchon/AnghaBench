
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_device {scalar_t__ queued_datagrams; int netdev; } ;


 scalar_t__ FWNET_MIN_QUEUED_DATAGRAMS ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void dec_queued_datagrams(struct fwnet_device *dev)
{
 if (--dev->queued_datagrams == FWNET_MIN_QUEUED_DATAGRAMS)
  netif_wake_queue(dev->netdev);
}
