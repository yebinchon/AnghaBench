
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int nr; int state; int Flags; } ;
struct isar_ch {int is; TYPE_1__ bch; int dpath; } ;


 int FLG_DTMFSEND ;
 int IOM_CTRL_ALAW ;
 int IOM_CTRL_ENA ;
 int IOM_CTRL_RCV ;
 int IOM_P1_TXD ;
 int ISAR_HIS_IOM2CFG ;
 int ISAR_HIS_IOM2REQ ;






 int SET_DPS (int ) ;
 int send_mbox (int ,int,int,int,int*) ;
 int test_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void
setup_iom2(struct isar_ch *ch) {
 u8 dps = SET_DPS(ch->dpath);
 u8 cmsb = IOM_CTRL_ENA, msg[5] = {IOM_P1_TXD, 0, 0, 0, 0};

 if (ch->bch.nr == 2) {
  msg[1] = 1;
  msg[3] = 1;
 }
 switch (ch->bch.state) {
 case 128:
  cmsb = 0;

  msg[1] = ch->dpath + 2;
  msg[3] = ch->dpath + 2;
  break;
 case 130:
 case 133:
  break;
 case 131:
 case 129:
  cmsb |= IOM_CTRL_RCV;

 case 132:
  if (test_bit(FLG_DTMFSEND, &ch->bch.Flags))
   cmsb |= IOM_CTRL_RCV;
  cmsb |= IOM_CTRL_ALAW;
  break;
 }
 send_mbox(ch->is, dps | ISAR_HIS_IOM2CFG, cmsb, 5, msg);
 udelay(1000);
 send_mbox(ch->is, dps | ISAR_HIS_IOM2REQ, 0, 0, ((void*)0));
 udelay(1000);
}
