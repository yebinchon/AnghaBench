
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int callback; } ;
struct fw_transaction {int node_id; int tlabel; int is_split_transaction; TYPE_2__ packet; int link; void* callback_data; int (* callback ) (struct fw_card*,int ,int *,int ,void*) ;int split_timeout_timer; struct fw_card* card; } ;
struct fw_card {TYPE_1__* driver; int lock; int transaction_list; int node_id; } ;
typedef int (* fw_transaction_callback_t ) (struct fw_card*,int ,int *,int ,void*) ;
struct TYPE_4__ {int (* send_request ) (struct fw_card*,TYPE_2__*) ;} ;


 int RCODE_SEND_ERROR ;
 int allocate_tlabel (struct fw_card*) ;
 int fw_fill_request (TYPE_2__*,int,int,int,int ,int,int,unsigned long long,void*,size_t) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int split_transaction_timeout_callback ;
 int stub1 (struct fw_card*,TYPE_2__*) ;
 int timer_setup (int *,int ,int ) ;
 int transmit_complete_callback ;

void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
       int destination_id, int generation, int speed,
       unsigned long long offset, void *payload, size_t length,
       fw_transaction_callback_t callback, void *callback_data)
{
 unsigned long flags;
 int tlabel;






 spin_lock_irqsave(&card->lock, flags);

 tlabel = allocate_tlabel(card);
 if (tlabel < 0) {
  spin_unlock_irqrestore(&card->lock, flags);
  callback(card, RCODE_SEND_ERROR, ((void*)0), 0, callback_data);
  return;
 }

 t->node_id = destination_id;
 t->tlabel = tlabel;
 t->card = card;
 t->is_split_transaction = 0;
 timer_setup(&t->split_timeout_timer,
      split_transaction_timeout_callback, 0);
 t->callback = callback;
 t->callback_data = callback_data;

 fw_fill_request(&t->packet, tcode, t->tlabel,
   destination_id, card->node_id, generation,
   speed, offset, payload, length);
 t->packet.callback = transmit_complete_callback;

 list_add_tail(&t->link, &card->transaction_list);

 spin_unlock_irqrestore(&card->lock, flags);

 card->driver->send_request(card, &t->packet);
}
