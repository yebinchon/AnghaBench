
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_device {scalar_t__ broadcast_state; int broadcast_rcv_context; } ;


 scalar_t__ FWNET_BROADCAST_ERROR ;
 int __fwnet_broadcast_stop (struct fwnet_device*) ;
 int fw_iso_context_stop (int ) ;

__attribute__((used)) static void fwnet_broadcast_stop(struct fwnet_device *dev)
{
 if (dev->broadcast_state == FWNET_BROADCAST_ERROR)
  return;
 fw_iso_context_stop(dev->broadcast_rcv_context);
 __fwnet_broadcast_stop(dev);
}
