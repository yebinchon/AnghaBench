
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ offset; struct fwnet_device* callback_data; int address_callback; } ;
struct fwnet_device {scalar_t__ local_fifo; TYPE_1__ handler; } ;


 scalar_t__ FWNET_NO_FIFO_ADDR ;
 int fw_core_add_address_handler (TYPE_1__*,int *) ;
 int fw_high_memory_region ;
 int fwnet_receive_packet ;

__attribute__((used)) static int fwnet_fifo_start(struct fwnet_device *dev)
{
 int retval;

 if (dev->local_fifo != FWNET_NO_FIFO_ADDR)
  return 0;

 dev->handler.length = 4096;
 dev->handler.address_callback = fwnet_receive_packet;
 dev->handler.callback_data = dev;

 retval = fw_core_add_address_handler(&dev->handler,
          &fw_high_memory_region);
 if (retval < 0)
  return retval;

 dev->local_fifo = dev->handler.offset;

 return 0;
}
