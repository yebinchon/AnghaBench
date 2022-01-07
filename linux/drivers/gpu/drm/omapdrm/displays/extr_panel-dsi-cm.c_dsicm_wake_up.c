
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {scalar_t__ ulps_enabled; } ;


 int dsicm_cancel_ulps_work (struct panel_drv_data*) ;
 int dsicm_exit_ulps (struct panel_drv_data*) ;
 int dsicm_queue_ulps_work (struct panel_drv_data*) ;

__attribute__((used)) static int dsicm_wake_up(struct panel_drv_data *ddata)
{
 if (ddata->ulps_enabled)
  return dsicm_exit_ulps(ddata);

 dsicm_cancel_ulps_work(ddata);
 dsicm_queue_ulps_work(ddata);
 return 0;
}
