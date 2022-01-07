
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {scalar_t__ monitor_all_cnt; } ;


 int adap_monitor_all_enable ;
 int call_op (struct cec_adapter*,int ,int) ;

int cec_monitor_all_cnt_inc(struct cec_adapter *adap)
{
 int ret = 0;

 if (adap->monitor_all_cnt == 0)
  ret = call_op(adap, adap_monitor_all_enable, 1);
 if (ret == 0)
  adap->monitor_all_cnt++;
 return ret;
}
