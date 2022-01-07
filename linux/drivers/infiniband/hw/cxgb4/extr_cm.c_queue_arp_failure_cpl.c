
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_3__ {int opcode; } ;
struct cpl_act_establish {TYPE_1__ ot; } ;
struct TYPE_4__ {int dev; } ;
struct c4iw_ep {TYPE_2__ com; } ;


 struct cpl_act_establish* cplhdr (struct sk_buff*) ;
 int sched (int ,struct sk_buff*) ;

__attribute__((used)) static void queue_arp_failure_cpl(struct c4iw_ep *ep, struct sk_buff *skb,
      int cpl)
{
 struct cpl_act_establish *rpl = cplhdr(skb);


 rpl->ot.opcode = cpl;





 *((struct c4iw_ep **)(skb->cb + 2 * sizeof(void *))) = ep;
 sched(ep->com.dev, skb);
}
