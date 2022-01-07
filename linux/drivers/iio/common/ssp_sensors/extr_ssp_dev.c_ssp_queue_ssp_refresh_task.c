
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int work_refresh; } ;


 int cancel_delayed_work_sync (int *) ;
 int msecs_to_jiffies (unsigned int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

int ssp_queue_ssp_refresh_task(struct ssp_data *data, unsigned int delay)
{
 cancel_delayed_work_sync(&data->work_refresh);

 return queue_delayed_work(system_power_efficient_wq,
      &data->work_refresh,
      msecs_to_jiffies(delay));
}
