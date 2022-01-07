
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int state; } ;
struct isar_ch {int is; TYPE_1__ bch; int dpath; } ;


 int ISAR_HIS_BSTREQ ;
 int ISAR_HIS_SARTCFG ;






 int SCTRL_HDMC_BOTH ;
 int SET_DPS (int ) ;
 int SMODE_BINARY ;
 int SMODE_DISABLE ;
 int SMODE_HDLC ;
 int SMODE_V14 ;
 int S_P1_CHS_8 ;
 int S_P2_BFT_DEF ;
 int send_mbox (int ,int,int,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static void
setup_sart(struct isar_ch *ch) {
 u8 dps = SET_DPS(ch->dpath);
 u8 ctrl, param[2] = {0, 0};

 switch (ch->bch.state) {
 case 128:
  send_mbox(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_DISABLE,
     0, ((void*)0));
  break;
 case 130:
 case 132:
  send_mbox(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_BINARY,
     2, param);
  break;
 case 133:
 case 129:
  send_mbox(ch->is, dps | ISAR_HIS_SARTCFG, SMODE_HDLC,
     1, param);
  break;
 case 131:
  ctrl = SMODE_V14 | SCTRL_HDMC_BOTH;
  param[0] = S_P1_CHS_8;
  param[1] = S_P2_BFT_DEF;
  send_mbox(ch->is, dps | ISAR_HIS_SARTCFG, ctrl, 2, param);
  break;
 }
 udelay(1000);
 send_mbox(ch->is, dps | ISAR_HIS_BSTREQ, 0, 0, ((void*)0));
 udelay(1000);
}
