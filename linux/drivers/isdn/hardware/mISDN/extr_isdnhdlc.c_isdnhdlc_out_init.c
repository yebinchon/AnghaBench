
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isdnhdlc_vars {int dchannel; int ffvalue; int cbin; int do_adapt56; int data_bits; int do_bitreverse; int state; } ;


 int HDLC_56KBIT ;
 int HDLC_BITREVERSE ;
 int HDLC_DCHANNEL ;
 int HDLC_SENDFLAG_B0 ;
 int HDLC_SEND_FAST_FLAG ;
 int HDLC_SEND_FIRST_FLAG ;
 int memset (struct isdnhdlc_vars*,int ,int) ;

void isdnhdlc_out_init(struct isdnhdlc_vars *hdlc, u32 features)
{
 memset(hdlc, 0, sizeof(struct isdnhdlc_vars));
 if (features & HDLC_DCHANNEL) {
  hdlc->dchannel = 1;
  hdlc->state = HDLC_SEND_FIRST_FLAG;
 } else {
  hdlc->dchannel = 0;
  hdlc->state = HDLC_SEND_FAST_FLAG;
  hdlc->ffvalue = 0x7e;
 }
 hdlc->cbin = 0x7e;
 if (features & HDLC_56KBIT) {
  hdlc->do_adapt56 = 1;
  hdlc->state = HDLC_SENDFLAG_B0;
 } else
  hdlc->data_bits = 8;
 if (features & HDLC_BITREVERSE)
  hdlc->do_bitreverse = 1;
}
