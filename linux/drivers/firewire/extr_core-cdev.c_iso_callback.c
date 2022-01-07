
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {size_t header_length; int header; int cycle; int closure; int type; } ;
struct iso_interrupt_event {TYPE_1__ interrupt; int event; } ;
struct fw_iso_context {int dummy; } ;
struct client {int iso_closure; } ;


 int FW_CDEV_EVENT_ISO_INTERRUPT ;
 int GFP_ATOMIC ;
 struct iso_interrupt_event* kmalloc (int,int ) ;
 int memcpy (int ,void*,size_t) ;
 int queue_event (struct client*,int *,TYPE_1__*,int,int *,int ) ;

__attribute__((used)) static void iso_callback(struct fw_iso_context *context, u32 cycle,
    size_t header_length, void *header, void *data)
{
 struct client *client = data;
 struct iso_interrupt_event *e;

 e = kmalloc(sizeof(*e) + header_length, GFP_ATOMIC);
 if (e == ((void*)0))
  return;

 e->interrupt.type = FW_CDEV_EVENT_ISO_INTERRUPT;
 e->interrupt.closure = client->iso_closure;
 e->interrupt.cycle = cycle;
 e->interrupt.header_length = header_length;
 memcpy(e->interrupt.header, header, header_length);
 queue_event(client, &e->event, &e->interrupt,
      sizeof(e->interrupt) + header_length, ((void*)0), 0);
}
