
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completed; int closure; int type; } ;
struct iso_interrupt_mc_event {TYPE_1__ interrupt; int event; } ;
struct fw_iso_context {int dummy; } ;
struct client {int buffer; int iso_closure; } ;
typedef int dma_addr_t ;


 int FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL ;
 int GFP_ATOMIC ;
 int fw_iso_buffer_lookup (int *,int ) ;
 struct iso_interrupt_mc_event* kmalloc (int,int ) ;
 int queue_event (struct client*,int *,TYPE_1__*,int,int *,int ) ;

__attribute__((used)) static void iso_mc_callback(struct fw_iso_context *context,
       dma_addr_t completed, void *data)
{
 struct client *client = data;
 struct iso_interrupt_mc_event *e;

 e = kmalloc(sizeof(*e), GFP_ATOMIC);
 if (e == ((void*)0))
  return;

 e->interrupt.type = FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL;
 e->interrupt.closure = client->iso_closure;
 e->interrupt.completed = fw_iso_buffer_lookup(&client->buffer,
            completed);
 queue_event(client, &e->event, &e->interrupt,
      sizeof(e->interrupt), ((void*)0), 0);
}
