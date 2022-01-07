
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct manager {int ch; int options; int sendq; } ;


 int GFP_KERNEL ;
 int MGR_PH_ACTIVE ;
 int MISDN_ID_ANY ;
 int PH_ACTIVATE_REQ ;
 int _queue_data (int *,int ,int ,int ,int *,int ) ;
 int do_send (struct manager*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
mgr_send_down(struct manager *mgr, struct sk_buff *skb)
{
 skb_queue_tail(&mgr->sendq, skb);
 if (!test_bit(MGR_PH_ACTIVE, &mgr->options)) {
  _queue_data(&mgr->ch, PH_ACTIVATE_REQ, MISDN_ID_ANY, 0,
       ((void*)0), GFP_KERNEL);
 } else {
  do_send(mgr);
 }
}
