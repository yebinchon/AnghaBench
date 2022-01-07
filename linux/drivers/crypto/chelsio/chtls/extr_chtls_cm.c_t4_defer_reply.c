
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct chtls_dev {TYPE_1__ deferq; int deferq_task; } ;
typedef int defer_handler_t ;
struct TYPE_5__ {int handler; } ;


 TYPE_3__* DEFERRED_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int schedule_work (int *) ;
 int skb_queue_len (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void t4_defer_reply(struct sk_buff *skb, struct chtls_dev *cdev,
      defer_handler_t handler)
{
 DEFERRED_SKB_CB(skb)->handler = handler;
 spin_lock_bh(&cdev->deferq.lock);
 __skb_queue_tail(&cdev->deferq, skb);
 if (skb_queue_len(&cdev->deferq) == 1)
  schedule_work(&cdev->deferq_task);
 spin_unlock_bh(&cdev->deferq.lock);
}
