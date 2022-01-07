
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int work_wdt; int wdt_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void ssp_disable_wdt_timer(struct ssp_data *data)
{
 del_timer_sync(&data->wdt_timer);
 cancel_work_sync(&data->work_wdt);
}
