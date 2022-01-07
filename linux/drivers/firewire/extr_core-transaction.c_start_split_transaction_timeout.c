
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_transaction {int is_split_transaction; int split_timeout_timer; int link; } ;
struct fw_card {int lock; scalar_t__ split_timeout_jiffies; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ jiffies ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void start_split_transaction_timeout(struct fw_transaction *t,
         struct fw_card *card)
{
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);

 if (list_empty(&t->link) || WARN_ON(t->is_split_transaction)) {
  spin_unlock_irqrestore(&card->lock, flags);
  return;
 }

 t->is_split_transaction = 1;
 mod_timer(&t->split_timeout_timer,
    jiffies + card->split_timeout_jiffies);

 spin_unlock_irqrestore(&card->lock, flags);
}
