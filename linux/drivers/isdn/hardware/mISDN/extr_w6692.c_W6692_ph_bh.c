
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int state; int name; } ;
struct dchannel {int state; int l1; struct w6692_hw* hw; } ;


 int ANYSIGNAL ;
 int HW_DEACT_CNF ;
 int HW_DEACT_IND ;
 int HW_POWERUP_IND ;
 int HW_RESET_IND ;
 int INFO2 ;
 int INFO4_P10 ;
 int INFO4_P8 ;
 int LOSTFRAMING ;
 int l1_event (int ,int ) ;
 int pr_debug (char*,int ,int,...) ;

__attribute__((used)) static void
W6692_ph_bh(struct dchannel *dch)
{
 struct w6692_hw *card = dch->hw;

 switch (card->state) {
 case 135:
  dch->state = 0;
  l1_event(dch->l1, HW_RESET_IND);
  break;
 case 131:
  dch->state = 3;
  l1_event(dch->l1, HW_DEACT_CNF);
  break;
 case 129:
  dch->state = 3;
  l1_event(dch->l1, HW_DEACT_IND);
  break;
 case 130:
  dch->state = 4;
  l1_event(dch->l1, HW_POWERUP_IND);
  break;
 case 128:
  if (dch->state <= 5) {
   dch->state = 5;
   l1_event(dch->l1, ANYSIGNAL);
  } else {
   dch->state = 8;
   l1_event(dch->l1, LOSTFRAMING);
  }
  break;
 case 132:
  dch->state = 6;
  l1_event(dch->l1, INFO2);
  break;
 case 133:
  dch->state = 7;
  l1_event(dch->l1, INFO4_P8);
  break;
 case 134:
  dch->state = 7;
  l1_event(dch->l1, INFO4_P10);
  break;
 default:
  pr_debug("%s: TE unknown state %02x dch state %02x\n",
    card->name, card->state, dch->state);
  break;
 }
 pr_debug("%s: TE newstate %02x\n", card->name, dch->state);
}
