
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_device {scalar_t__ local_fifo; int handler; } ;


 scalar_t__ FWNET_NO_FIFO_ADDR ;
 int fw_core_remove_address_handler (int *) ;

__attribute__((used)) static void fwnet_fifo_stop(struct fwnet_device *dev)
{
 if (dev->local_fifo == FWNET_NO_FIFO_ADDR)
  return;

 fw_core_remove_address_handler(&dev->handler);
 dev->local_fifo = FWNET_NO_FIFO_ADDR;
}
