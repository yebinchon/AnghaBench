
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct layer2 {int i_queue; int T203; int t203; int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int EV_L2_ACK_PULL ;
 int EV_L2_T203 ;
 int FLG_MOD128 ;
 int FLG_ORIG ;
 scalar_t__ IsRNR (int*,struct layer2*) ;
 int ST_L2_7 ;
 scalar_t__ cansend (struct layer2*) ;
 int clear_peer_busy (struct layer2*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_response (struct layer2*) ;
 int invoke_retransmission (struct layer2*,unsigned int) ;
 int l2addrsize (struct layer2*) ;
 scalar_t__ legalnr (struct layer2*,unsigned int) ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmEvent (struct FsmInst*,int ,int *) ;
 int nrerrorrecovery (struct FsmInst*) ;
 int restart_t200 (struct layer2*,int) ;
 int set_peer_busy (struct layer2*) ;
 int setva (struct layer2*,unsigned int) ;
 int skb_pull (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int stop_t200 (struct layer2*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st8_got_super(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;
 int PollFlag, rsp, rnr = 0;
 unsigned int nr;

 rsp = *skb->data & 0x2;
 if (test_bit(FLG_ORIG, &l2->flag))
  rsp = !rsp;

 skb_pull(skb, l2addrsize(l2));

 if (IsRNR(skb->data, l2)) {
  set_peer_busy(l2);
  rnr = 1;
 } else
  clear_peer_busy(l2);

 if (test_bit(FLG_MOD128, &l2->flag)) {
  PollFlag = (skb->data[1] & 0x1) == 0x1;
  nr = skb->data[1] >> 1;
 } else {
  PollFlag = (skb->data[0] & 0x10);
  nr = (skb->data[0] >> 5) & 0x7;
 }
 dev_kfree_skb(skb);
 if (rsp && PollFlag) {
  if (legalnr(l2, nr)) {
   if (rnr) {
    restart_t200(l2, 15);
   } else {
    stop_t200(l2, 16);
    mISDN_FsmAddTimer(&l2->t203, l2->T203,
        EV_L2_T203, ((void*)0), 5);
    setva(l2, nr);
   }
   invoke_retransmission(l2, nr);
   mISDN_FsmChangeState(fi, ST_L2_7);
   if (skb_queue_len(&l2->i_queue) && cansend(l2))
    mISDN_FsmEvent(fi, EV_L2_ACK_PULL, ((void*)0));
  } else
   nrerrorrecovery(fi);
 } else {
  if (!rsp && PollFlag)
   enquiry_response(l2);
  if (legalnr(l2, nr))
   setva(l2, nr);
  else
   nrerrorrecovery(fi);
 }
}
