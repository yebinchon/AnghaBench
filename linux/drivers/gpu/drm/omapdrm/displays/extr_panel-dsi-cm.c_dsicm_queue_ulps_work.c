
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {scalar_t__ ulps_timeout; int ulps_work; int workqueue; } ;


 int msecs_to_jiffies (scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void dsicm_queue_ulps_work(struct panel_drv_data *ddata)
{
 if (ddata->ulps_timeout > 0)
  queue_delayed_work(ddata->workqueue, &ddata->ulps_work,
    msecs_to_jiffies(ddata->ulps_timeout));
}
