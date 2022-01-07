
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int Flags; } ;
struct TYPE_7__ {int expires; } ;
struct isar_ch {void* state; int cmd; int mod; int newcmd; int newmod; int try_mod; TYPE_2__* is; TYPE_1__ bch; TYPE_3__ ftimer; int dpath; } ;
struct TYPE_6__ {int name; int Flags; } ;


 int BC_FLG_ORIG ;
 int FLG_FTI_RUN ;
 int FLG_LL_CONN ;
 int FLG_LL_OK ;
 int HW_MOD_CONNECT ;
 int HW_MOD_FCERROR ;
 int HW_MOD_FRH ;
 int HW_MOD_FTH ;
 int HW_MOD_NOCARR ;
 int HW_MOD_OK ;
 int HW_MOD_READY ;
 int HZ ;
 int ISAR_HIS_PSTREQ ;
 int ISAR_HIS_PUMPCTRL ;
 int ISAR_RATE_REQ ;
 int PCTRL_CMD_CONT ;
 int PCTRL_CMD_ESC ;




 int PCTRL_CMD_SILON ;
 int SET_DPS (int ) ;
 void* STFAX_ACTIV ;
 void* STFAX_CONT ;
 void* STFAX_ESCAPE ;
 void* STFAX_LINE ;
 void* STFAX_READY ;
 void* STFAX_SILDET ;
 int add_timer (TYPE_3__*) ;
 int bch ;
 int del_timer (TYPE_3__*) ;
 int deliver_status (struct isar_ch*,int ) ;
 int isar_pump_cmd (int ,int ,int) ;
 int jiffies ;
 int pr_debug (char*,int ,...) ;
 int send_mbox (TYPE_2__*,int,int,int,int*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_statev_fax(struct isar_ch *ch, u8 devt) {
 u8 dps = SET_DPS(ch->dpath);
 u8 p1;

 switch (devt) {
 case 139:
  pr_debug("%s: pump stev TIMER\n", ch->is->name);
  break;
 case 130:
  pr_debug("%s: pump stev RSP_READY\n", ch->is->name);
  ch->state = STFAX_READY;
  deliver_status(ch, HW_MOD_READY);






  break;
 case 134:
  if (ch->state == STFAX_LINE) {
   pr_debug("%s: pump stev LINE_TX_H\n", ch->is->name);
   ch->state = STFAX_CONT;
   send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
      PCTRL_CMD_CONT, 0, ((void*)0));
  } else {
   pr_debug("%s: pump stev LINE_TX_H wrong st %x\n",
     ch->is->name, ch->state);
  }
  break;
 case 136:
  if (ch->state == STFAX_LINE) {
   pr_debug("%s: pump stev LINE_RX_H\n", ch->is->name);
   ch->state = STFAX_CONT;
   send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
      PCTRL_CMD_CONT, 0, ((void*)0));
  } else {
   pr_debug("%s: pump stev LINE_RX_H wrong st %x\n",
     ch->is->name, ch->state);
  }
  break;
 case 135:
  if (ch->state == STFAX_LINE) {
   pr_debug("%s: pump stev LINE_TX_B\n", ch->is->name);
   ch->state = STFAX_CONT;
   send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
      PCTRL_CMD_CONT, 0, ((void*)0));
  } else {
   pr_debug("%s: pump stev LINE_TX_B wrong st %x\n",
     ch->is->name, ch->state);
  }
  break;
 case 137:
  if (ch->state == STFAX_LINE) {
   pr_debug("%s: pump stev LINE_RX_B\n", ch->is->name);
   ch->state = STFAX_CONT;
   send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
      PCTRL_CMD_CONT, 0, ((void*)0));
  } else {
   pr_debug("%s: pump stev LINE_RX_B wrong st %x\n",
     ch->is->name, ch->state);
  }
  break;
 case 133:
  if (ch->state == STFAX_CONT) {
   pr_debug("%s: pump stev RSP_CONN\n", ch->is->name);
   ch->state = STFAX_ACTIV;
   test_and_set_bit(ISAR_RATE_REQ, &ch->is->Flags);
   send_mbox(ch->is, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
   if (ch->cmd == 141) {
    int delay = (ch->mod == 3) ? 1000 : 200;

    if (test_and_set_bit(FLG_FTI_RUN,
           &ch->bch.Flags))
     del_timer(&ch->ftimer);
    ch->ftimer.expires =
     jiffies + ((delay * HZ) / 1000);
    test_and_set_bit(FLG_LL_CONN,
       &ch->bch.Flags);
    add_timer(&ch->ftimer);
   } else {
    deliver_status(ch, HW_MOD_CONNECT);
   }
  } else {
   pr_debug("%s: pump stev RSP_CONN wrong st %x\n",
     ch->is->name, ch->state);
  }
  break;
 case 138:
  pr_debug("%s: pump stev FLAGS_DET\n", ch->is->name);
  break;
 case 132:
  pr_debug("%s: pump stev RSP_DISC state(%d)\n",
    ch->is->name, ch->state);
  if (ch->state == STFAX_ESCAPE) {
   p1 = 5;
   switch (ch->newcmd) {
   case 0:
    ch->state = STFAX_READY;
    break;
   case 140:
    p1 = 2;

   case 141:
    send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
       PCTRL_CMD_SILON, 1, &p1);
    ch->state = STFAX_SILDET;
    break;
   case 143:
   case 142:
    ch->mod = ch->newmod;
    p1 = ch->newmod;
    ch->newmod = 0;
    ch->cmd = ch->newcmd;
    ch->newcmd = 0;
    send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
       ch->cmd, 1, &p1);
    ch->state = STFAX_LINE;
    ch->try_mod = 3;
    break;
   default:
    pr_debug("%s: RSP_DISC unknown newcmd %x\n",
      ch->is->name, ch->newcmd);
    break;
   }
  } else if (ch->state == STFAX_ACTIV) {
   if (test_and_clear_bit(FLG_LL_OK, &ch->bch.Flags))
    deliver_status(ch, HW_MOD_OK);
   else if (ch->cmd == 142)
    deliver_status(ch, HW_MOD_NOCARR);
   else
    deliver_status(ch, HW_MOD_FCERROR);
   ch->state = STFAX_READY;
  } else if (ch->state != STFAX_SILDET) {

   ch->state = STFAX_READY;
   deliver_status(ch, HW_MOD_FCERROR);
  }
  break;
 case 129:
  pr_debug("%s: pump stev RSP_SILDET\n", ch->is->name);
  if (ch->state == STFAX_SILDET) {
   ch->mod = ch->newmod;
   p1 = ch->newmod;
   ch->newmod = 0;
   ch->cmd = ch->newcmd;
   ch->newcmd = 0;
   send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
      ch->cmd, 1, &p1);
   ch->state = STFAX_LINE;
   ch->try_mod = 3;
  }
  break;
 case 128:
  pr_debug("%s: pump stev RSP_SILOFF\n", ch->is->name);
  break;
 case 131:
  if (ch->state == STFAX_LINE) {
   pr_debug("%s: pump stev RSP_FCERR try %d\n",
     ch->is->name, ch->try_mod);
   if (ch->try_mod--) {
    send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL,
       ch->cmd, 1, &ch->mod);
    break;
   }
  }
  pr_debug("%s: pump stev RSP_FCERR\n", ch->is->name);
  ch->state = STFAX_ESCAPE;
  send_mbox(ch->is, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_ESC,
     0, ((void*)0));
  deliver_status(ch, HW_MOD_FCERROR);
  break;
 default:
  break;
 }
}
