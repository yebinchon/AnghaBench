
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tt ;
struct isar_hw {int iis; int cmsb; int bstat; int clsb; int name; int hw; int (* write_reg ) (int ,int ,int ) ;} ;
struct TYPE_2__ {int state; int ch; int err_rdo; int err_tx; } ;
struct isar_ch {TYPE_1__ bch; } ;


 int BSTEV_RBO ;
 int BSTEV_TBO ;
 int DTMF_TONE_VAL ;
 int GFP_ATOMIC ;
 int ISAR_IIA ;






 int ISAR_IIS_MSCMSD ;



 int ISDN_P_B_MODEM_ASYNC ;
 int ISDN_P_B_RAW ;
 int ISDN_P_B_T30_FAX ;
 int MISDN_ID_ANY ;
 int PH_CONTROL_IND ;
 int _queue_data (int *,int ,int ,int,int*,int ) ;
 int check_send (struct isar_hw*,int) ;
 int get_irq_infos (struct isar_hw*) ;
 int isar_pump_statev_fax (struct isar_ch*,int) ;
 int isar_pump_statev_modem (struct isar_ch*,int) ;
 int isar_pump_status_rsp (struct isar_ch*) ;
 int isar_rcv_frame (struct isar_ch*) ;
 int pr_debug (char*,int ,int,...) ;
 int rcv_mbox (struct isar_hw*,int *) ;
 struct isar_ch* sel_bch_isar (struct isar_hw*,int) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;

void
mISDNisar_irq(struct isar_hw *isar)
{
 struct isar_ch *ch;

 get_irq_infos(isar);
 switch (isar->iis & ISAR_IIS_MSCMSD) {
 case 128:
  ch = sel_bch_isar(isar, isar->iis >> 6);
  if (ch)
   isar_rcv_frame(ch);
  else {
   pr_debug("%s: ISAR spurious IIS_RDATA %x/%x/%x\n",
     isar->name, isar->iis, isar->cmsb,
     isar->clsb);
   isar->write_reg(isar->hw, ISAR_IIA, 0);
  }
  break;
 case 133:
  isar->write_reg(isar->hw, ISAR_IIA, 0);
  isar->bstat |= isar->cmsb;
  check_send(isar, isar->cmsb);
  break;
 case 136:
  pr_debug("%s: Buffer STEV dpath%d msb(%x)\n",
    isar->name, isar->iis >> 6, isar->cmsb);
  isar->write_reg(isar->hw, ISAR_IIA, 0);
  break;
 case 130:
  ch = sel_bch_isar(isar, isar->iis >> 6);
  if (ch) {
   rcv_mbox(isar, ((void*)0));
   if (ch->bch.state == ISDN_P_B_MODEM_ASYNC)
    isar_pump_statev_modem(ch, isar->cmsb);
   else if (ch->bch.state == ISDN_P_B_T30_FAX)
    isar_pump_statev_fax(ch, isar->cmsb);
   else if (ch->bch.state == ISDN_P_B_RAW) {
    int tt;
    tt = isar->cmsb | 0x30;
    if (tt == 0x3e)
     tt = '*';
    else if (tt == 0x3f)
     tt = '#';
    else if (tt > '9')
     tt += 7;
    tt |= DTMF_TONE_VAL;
    _queue_data(&ch->bch.ch, PH_CONTROL_IND,
         MISDN_ID_ANY, sizeof(tt), &tt,
         GFP_ATOMIC);
   } else
    pr_debug("%s: ISAR IIS_PSTEV pm %d sta %x\n",
      isar->name, ch->bch.state,
      isar->cmsb);
  } else {
   pr_debug("%s: ISAR spurious IIS_PSTEV %x/%x/%x\n",
     isar->name, isar->iis, isar->cmsb,
     isar->clsb);
   isar->write_reg(isar->hw, ISAR_IIA, 0);
  }
  break;
 case 129:
  ch = sel_bch_isar(isar, isar->iis >> 6);
  if (ch) {
   rcv_mbox(isar, ((void*)0));
   isar_pump_status_rsp(ch);
  } else {
   pr_debug("%s: ISAR spurious IIS_PSTRSP %x/%x/%x\n",
     isar->name, isar->iis, isar->cmsb,
     isar->clsb);
   isar->write_reg(isar->hw, ISAR_IIA, 0);
  }
  break;
 case 134:
 case 135:
 case 131:
  rcv_mbox(isar, ((void*)0));
  break;
 case 132:
  rcv_mbox(isar, ((void*)0));
  pr_debug("%s: invalid msg his:%x\n", isar->name, isar->cmsb);
  break;
 default:
  rcv_mbox(isar, ((void*)0));
  pr_debug("%s: unhandled msg iis(%x) ctrl(%x/%x)\n",
    isar->name, isar->iis, isar->cmsb, isar->clsb);
  break;
 }
}
