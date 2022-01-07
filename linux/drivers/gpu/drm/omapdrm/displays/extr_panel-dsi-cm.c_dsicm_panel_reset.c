
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_drv_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int dsicm_hw_reset (struct panel_drv_data*) ;
 int dsicm_power_off (struct panel_drv_data*) ;
 int dsicm_power_on (struct panel_drv_data*) ;

__attribute__((used)) static int dsicm_panel_reset(struct panel_drv_data *ddata)
{
 dev_err(&ddata->pdev->dev, "performing LCD reset\n");

 dsicm_power_off(ddata);
 dsicm_hw_reset(ddata);
 return dsicm_power_on(ddata);
}
