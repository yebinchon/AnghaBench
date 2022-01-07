
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pages; } ;
struct fwnet_device {scalar_t__ broadcast_state; int * broadcast_rcv_buffer_ptrs; int * broadcast_rcv_context; int card; TYPE_1__ broadcast_rcv_buffer; } ;


 scalar_t__ FWNET_BROADCAST_ERROR ;
 unsigned int FWNET_ISO_PAGE_COUNT ;
 int fw_iso_buffer_destroy (TYPE_1__*,int ) ;
 int fw_iso_context_destroy (int *) ;
 int kfree (int *) ;
 int kunmap (int ) ;

__attribute__((used)) static void __fwnet_broadcast_stop(struct fwnet_device *dev)
{
 unsigned u;

 if (dev->broadcast_state != FWNET_BROADCAST_ERROR) {
  for (u = 0; u < FWNET_ISO_PAGE_COUNT; u++)
   kunmap(dev->broadcast_rcv_buffer.pages[u]);
  fw_iso_buffer_destroy(&dev->broadcast_rcv_buffer, dev->card);
 }
 if (dev->broadcast_rcv_context) {
  fw_iso_context_destroy(dev->broadcast_rcv_context);
  dev->broadcast_rcv_context = ((void*)0);
 }
 kfree(dev->broadcast_rcv_buffer_ptrs);
 dev->broadcast_rcv_buffer_ptrs = ((void*)0);
 dev->broadcast_state = FWNET_BROADCAST_ERROR;
}
