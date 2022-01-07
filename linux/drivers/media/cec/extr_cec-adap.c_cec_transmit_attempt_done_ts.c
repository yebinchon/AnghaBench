
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cec_adapter {int name; } ;
typedef int ktime_t ;





 int CEC_TX_STATUS_MAX_RETRIES ;


 int WARN (int,char*,int ,int) ;
 int cec_transmit_done_ts (struct cec_adapter*,int,int,int,int,int,int ) ;

void cec_transmit_attempt_done_ts(struct cec_adapter *adap,
      u8 status, ktime_t ts)
{
 switch (status & ~CEC_TX_STATUS_MAX_RETRIES) {
 case 128:
  cec_transmit_done_ts(adap, status, 0, 0, 0, 0, ts);
  return;
 case 132:
  cec_transmit_done_ts(adap, status, 1, 0, 0, 0, ts);
  return;
 case 129:
  cec_transmit_done_ts(adap, status, 0, 1, 0, 0, ts);
  return;
 case 130:
  cec_transmit_done_ts(adap, status, 0, 0, 1, 0, ts);
  return;
 case 131:
  cec_transmit_done_ts(adap, status, 0, 0, 0, 1, ts);
  return;
 default:

  WARN(1, "cec-%s: invalid status 0x%02x\n", adap->name, status);
  return;
 }
}
