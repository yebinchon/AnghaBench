
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int dch; int (* dcb ) (int ,int ) ;int Flags; } ;
struct FsmInst {struct layer1* userdata; } ;


 int FLG_L1_ACTIVATED ;
 int FLG_L1_ACTTIMER ;
 int PH_ACTIVATE_IND ;
 int stub1 (int ,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l1_timer_act(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 test_and_clear_bit(FLG_L1_ACTTIMER, &l1->Flags);
 test_and_set_bit(FLG_L1_ACTIVATED, &l1->Flags);
 l1->dcb(l1->dch, PH_ACTIVATE_IND);
}
