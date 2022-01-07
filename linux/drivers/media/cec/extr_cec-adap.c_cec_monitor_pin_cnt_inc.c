
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {scalar_t__ monitor_pin_cnt; } ;


 int adap_monitor_pin_enable ;
 int call_op (struct cec_adapter*,int ,int) ;

int cec_monitor_pin_cnt_inc(struct cec_adapter *adap)
{
 int ret = 0;

 if (adap->monitor_pin_cnt == 0)
  ret = call_op(adap, adap_monitor_pin_enable, 1);
 if (ret == 0)
  adap->monitor_pin_cnt++;
 return ret;
}
