
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int suspend_mode; } ;


 int MXT_POWER_CFG_DEEPSLEEP ;


 int MXT_T9_CTRL ;
 int MXT_TOUCH_MULTI_T9 ;
 int mxt_set_t7_power_cfg (struct mxt_data*,int ) ;
 int mxt_write_object (struct mxt_data*,int ,int ,int ) ;

__attribute__((used)) static void mxt_stop(struct mxt_data *data)
{
 switch (data->suspend_mode) {
 case 128:

  mxt_write_object(data,
    MXT_TOUCH_MULTI_T9, MXT_T9_CTRL, 0);
  break;

 case 129:
 default:
  mxt_set_t7_power_cfg(data, MXT_POWER_CFG_DEEPSLEEP);
  break;
 }
}
