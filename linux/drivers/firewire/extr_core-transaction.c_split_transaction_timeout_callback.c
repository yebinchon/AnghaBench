
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fw_transaction {unsigned long long tlabel; int callback_data; int (* callback ) (struct fw_card*,int ,int *,int ,int ) ;int link; struct fw_card* card; } ;
struct fw_card {unsigned long long tlabel_mask; int lock; } ;


 int RCODE_CANCELLED ;
 struct fw_transaction* from_timer (int ,struct timer_list*,int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int split_timeout_timer ;
 int stub1 (struct fw_card*,int ,int *,int ,int ) ;
 struct fw_transaction* t ;

__attribute__((used)) static void split_transaction_timeout_callback(struct timer_list *timer)
{
 struct fw_transaction *t = from_timer(t, timer, split_timeout_timer);
 struct fw_card *card = t->card;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 if (list_empty(&t->link)) {
  spin_unlock_irqrestore(&card->lock, flags);
  return;
 }
 list_del(&t->link);
 card->tlabel_mask &= ~(1ULL << t->tlabel);
 spin_unlock_irqrestore(&card->lock, flags);

 t->callback(card, RCODE_CANCELLED, ((void*)0), 0, t->callback_data);
}
