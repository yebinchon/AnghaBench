
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ssp_data {int fw_dl_state; scalar_t__ timeout_cnt; scalar_t__ com_fail_cnt; int wdt_timer; int work_wdt; } ;





 scalar_t__ SSP_LIMIT_RESET_CNT ;
 scalar_t__ SSP_LIMIT_TIMEOUT_CNT ;
 int SSP_WDT_TIME ;
 struct ssp_data* data ;
 struct ssp_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int queue_work (int ,int *) ;
 int system_power_efficient_wq ;
 int wdt_timer ;

__attribute__((used)) static void ssp_wdt_timer_func(struct timer_list *t)
{
 struct ssp_data *data = from_timer(data, t, wdt_timer);

 switch (data->fw_dl_state) {
 case 129:
 case 130:
 case 128:
  goto _mod;
 }

 if (data->timeout_cnt > SSP_LIMIT_TIMEOUT_CNT ||
     data->com_fail_cnt > SSP_LIMIT_RESET_CNT)
  queue_work(system_power_efficient_wq, &data->work_wdt);
_mod:
 mod_timer(&data->wdt_timer, jiffies + msecs_to_jiffies(SSP_WDT_TIME));
}
