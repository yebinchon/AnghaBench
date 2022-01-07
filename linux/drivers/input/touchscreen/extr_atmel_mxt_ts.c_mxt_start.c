
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int suspend_mode; } ;


 int MXT_COMMAND_CALIBRATE ;
 int MXT_POWER_CFG_RUN ;


 int MXT_T9_CTRL ;
 int MXT_TOUCH_MULTI_T9 ;
 int mxt_set_t7_power_cfg (struct mxt_data*,int ) ;
 int mxt_soft_reset (struct mxt_data*) ;
 int mxt_t6_command (struct mxt_data*,int ,int,int) ;
 int mxt_write_object (struct mxt_data*,int ,int ,int) ;

__attribute__((used)) static void mxt_start(struct mxt_data *data)
{
 switch (data->suspend_mode) {
 case 128:
  mxt_soft_reset(data);



  mxt_write_object(data,
    MXT_TOUCH_MULTI_T9, MXT_T9_CTRL, 0x83);
  break;

 case 129:
 default:
  mxt_set_t7_power_cfg(data, MXT_POWER_CFG_RUN);


  mxt_t6_command(data, MXT_COMMAND_CALIBRATE, 1, 0);
  break;
 }
}
