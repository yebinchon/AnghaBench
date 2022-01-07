
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; } ;
struct c4iw_dev {int dummy; } ;


 int queue_work (int ,int *) ;
 int rxq ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_work ;
 int workq ;

__attribute__((used)) static int sched(struct c4iw_dev *dev, struct sk_buff *skb)
{




 *((struct c4iw_dev **) (skb->cb + sizeof(void *))) = dev;




 skb_queue_tail(&rxq, skb);
 queue_work(workq, &skb_work);
 return 0;
}
