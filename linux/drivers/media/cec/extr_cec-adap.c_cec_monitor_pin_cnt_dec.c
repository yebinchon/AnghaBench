
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {scalar_t__ monitor_pin_cnt; } ;


 int WARN_ON (int ) ;
 int adap_monitor_pin_enable ;
 int call_op (struct cec_adapter*,int ,int ) ;

void cec_monitor_pin_cnt_dec(struct cec_adapter *adap)
{
 adap->monitor_pin_cnt--;
 if (adap->monitor_pin_cnt == 0)
  WARN_ON(call_op(adap, adap_monitor_pin_enable, 0));
}
