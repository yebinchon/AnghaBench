
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x {int intr_mutex; int clk; } ;


 int DIV_ROUND_UP (int ,int) ;
 int clk_get_rate (int ) ;
 int host1x_hw_intr_init_host_sync (struct host1x*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int syncpt_thresh_work ;

void host1x_intr_start(struct host1x *host)
{
 u32 hz = clk_get_rate(host->clk);
 int err;

 mutex_lock(&host->intr_mutex);
 err = host1x_hw_intr_init_host_sync(host, DIV_ROUND_UP(hz, 1000000),
         syncpt_thresh_work);
 if (err) {
  mutex_unlock(&host->intr_mutex);
  return;
 }
 mutex_unlock(&host->intr_mutex);
}
