
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct layer2 {char tei; int ui_queue; int flag; int sapi; int ch; } ;
struct FsmInst {scalar_t__ state; struct layer2* userdata; } ;
typedef int info ;


 int DL_INFORMATION_IND ;
 int DL_INFO_L2_CONNECT ;
 int FLG_L3_INIT ;
 scalar_t__ ST_L2_3 ;
 int ST_L2_4 ;
 int establishlink (struct FsmInst*) ;
 int l2up_create (struct layer2*,int ,int,int *) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int set_channel_address (int *,int ,char) ;
 scalar_t__ skb_queue_len (int *) ;
 int test_and_set_bit (int ,int *) ;
 int tx_ui (struct layer2*) ;

__attribute__((used)) static void
l2_got_tei(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 u_int info;

 l2->tei = (signed char)(long)arg;
 set_channel_address(&l2->ch, l2->sapi, l2->tei);
 info = DL_INFO_L2_CONNECT;
 l2up_create(l2, DL_INFORMATION_IND, sizeof(info), &info);
 if (fi->state == ST_L2_3) {
  establishlink(fi);
  test_and_set_bit(FLG_L3_INIT, &l2->flag);
 } else
  mISDN_FsmChangeState(fi, ST_L2_4);
 if (skb_queue_len(&l2->ui_queue))
  tx_ui(l2);
}
