
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int tei; int ui_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_IND ;
 int GROUP_TEI ;
 int ST_L2_1 ;
 int l2up_create (struct layer2*,int ,int ,int *) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
l2_st3_tei_remove(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 skb_queue_purge(&l2->ui_queue);
 l2->tei = GROUP_TEI;
 l2up_create(l2, DL_RELEASE_IND, 0, ((void*)0));
 mISDN_FsmChangeState(fi, ST_L2_1);
}
