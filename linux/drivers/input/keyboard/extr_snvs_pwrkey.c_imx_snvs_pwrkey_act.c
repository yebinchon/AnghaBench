
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrkey_drv_data {int check_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void imx_snvs_pwrkey_act(void *pdata)
{
 struct pwrkey_drv_data *pd = pdata;

 del_timer_sync(&pd->check_timer);
}
