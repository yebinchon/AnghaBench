
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isar_ch {int conmsg; TYPE_1__* is; } ;
struct TYPE_2__ {int* buf; int name; int Flags; } ;


 int ISAR_RATE_REQ ;
 char** dmril ;
 char** dmrim ;
 int pr_debug (char*,int ,int ) ;
 int pr_info (char*,int ,int) ;
 int sprintf (int ,char*,char*,char*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_status_rsp(struct isar_ch *ch) {
 u8 ril = ch->is->buf[0];
 u8 rim;

 if (!test_and_clear_bit(ISAR_RATE_REQ, &ch->is->Flags))
  return;
 if (ril > 14) {
  pr_info("%s: wrong pstrsp ril=%d\n", ch->is->name, ril);
  ril = 15;
 }
 switch (ch->is->buf[1]) {
 case 0:
  rim = 0;
  break;
 case 0x20:
  rim = 2;
  break;
 case 0x40:
  rim = 3;
  break;
 case 0x41:
  rim = 4;
  break;
 case 0x51:
  rim = 5;
  break;
 case 0x61:
  rim = 6;
  break;
 case 0x71:
  rim = 7;
  break;
 case 0x82:
  rim = 8;
  break;
 case 0x92:
  rim = 9;
  break;
 case 0xa2:
  rim = 10;
  break;
 default:
  rim = 1;
  break;
 }
 sprintf(ch->conmsg, "%s %s", dmril[ril], dmrim[rim]);
 pr_debug("%s: pump strsp %s\n", ch->is->name, ch->conmsg);
}
