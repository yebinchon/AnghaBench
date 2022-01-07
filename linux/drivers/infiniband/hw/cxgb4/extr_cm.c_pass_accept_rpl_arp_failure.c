
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct c4iw_ep {int com; int hwtid; } ;


 int DEAD ;
 int FAKE_CPL_PASS_PUT_EP_SAFE ;
 int __state_set (int *,int ) ;
 int pr_err (char*,int ) ;
 int queue_arp_failure_cpl (struct c4iw_ep*,struct sk_buff*,int ) ;

__attribute__((used)) static void pass_accept_rpl_arp_failure(void *handle, struct sk_buff *skb)
{
 struct c4iw_ep *ep = handle;

 pr_err("ARP failure during accept - tid %u - dropping connection\n",
        ep->hwtid);

 __state_set(&ep->com, DEAD);
 queue_arp_failure_cpl(ep, skb, FAKE_CPL_PASS_PUT_EP_SAFE);
}
