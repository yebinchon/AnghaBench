
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isar_ch {TYPE_1__* is; int dpath; } ;
struct TYPE_2__ {int name; int Flags; } ;


 int HW_MOD_CONNECT ;
 int HW_MOD_NOCARR ;
 int ISAR_HIS_PSTREQ ;
 int ISAR_RATE_REQ ;
 int SET_DPS (int ) ;
 int deliver_status (struct isar_ch*,int ) ;
 int pr_debug (char*,int ) ;
 int pr_info (char*,int ,int) ;
 int send_mbox (TYPE_1__*,int,int ,int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_statev_modem(struct isar_ch *ch, u8 devt) {
 u8 dps = SET_DPS(ch->dpath);

 switch (devt) {
 case 140:
  pr_debug("%s: pump stev TIMER\n", ch->is->name);
  break;
 case 138:
  pr_debug("%s: pump stev CONNECT\n", ch->is->name);
  deliver_status(ch, HW_MOD_CONNECT);
  break;
 case 139:
  pr_debug("%s: pump stev NO CONNECT\n", ch->is->name);
  send_mbox(ch->is, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
  deliver_status(ch, HW_MOD_NOCARR);
  break;
 case 128:
  pr_debug("%s: pump stev V24 OFF\n", ch->is->name);
  break;
 case 136:
  pr_debug("%s: pump stev CTS ON\n", ch->is->name);
  break;
 case 137:
  pr_debug("%s pump stev CTS OFF\n", ch->is->name);
  break;
 case 134:
  pr_debug("%s: pump stev CARRIER ON\n", ch->is->name);
  test_and_set_bit(ISAR_RATE_REQ, &ch->is->Flags);
  send_mbox(ch->is, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
  break;
 case 135:
  pr_debug("%s: pump stev CARRIER OFF\n", ch->is->name);
  break;
 case 132:
  pr_debug("%s: pump stev DSR ON\n", ch->is->name);
  break;
 case 133:
  pr_debug("%s: pump stev DSR_OFF\n", ch->is->name);
  break;
 case 129:
  pr_debug("%s: pump stev REMOTE RETRAIN\n", ch->is->name);
  break;
 case 130:
  pr_debug("%s: pump stev REMOTE RENEGOTIATE\n", ch->is->name);
  break;
 case 131:
  pr_debug("%s: pump stev GSTN CLEAR\n", ch->is->name);
  break;
 default:
  pr_info("u%s: unknown pump stev %x\n", ch->is->name, devt);
  break;
 }
}
