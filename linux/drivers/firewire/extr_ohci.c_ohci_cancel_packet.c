
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_packet {int ack; int (* callback ) (struct fw_packet*,TYPE_1__*,int ) ;int header; int speed; int payload_length; int payload_bus; scalar_t__ payload_mapped; struct driver_data* driver_data; } ;
struct TYPE_2__ {int device; } ;
struct context {int tasklet; } ;
struct fw_ohci {TYPE_1__ card; struct context at_request_ctx; } ;
struct fw_card {int dummy; } ;
struct driver_data {int * packet; } ;


 int DMA_TO_DEVICE ;
 int ENOENT ;
 int RCODE_CANCELLED ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int log_ar_at_event (struct fw_ohci*,char,int ,int ,int) ;
 int stub1 (struct fw_packet*,TYPE_1__*,int ) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int ohci_cancel_packet(struct fw_card *card, struct fw_packet *packet)
{
 struct fw_ohci *ohci = fw_ohci(card);
 struct context *ctx = &ohci->at_request_ctx;
 struct driver_data *driver_data = packet->driver_data;
 int ret = -ENOENT;

 tasklet_disable(&ctx->tasklet);

 if (packet->ack != 0)
  goto out;

 if (packet->payload_mapped)
  dma_unmap_single(ohci->card.device, packet->payload_bus,
     packet->payload_length, DMA_TO_DEVICE);

 log_ar_at_event(ohci, 'T', packet->speed, packet->header, 0x20);
 driver_data->packet = ((void*)0);
 packet->ack = RCODE_CANCELLED;
 packet->callback(packet, &ohci->card, packet->ack);
 ret = 0;
 out:
 tasklet_enable(&ctx->tasklet);

 return ret;
}
