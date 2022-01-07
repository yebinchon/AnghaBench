
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int uch_config; int** pwm_auto_pwm; int vrm; } ;


 int VT1211_REG_TEMP1_CONFIG ;
 int VT1211_REG_TEMP2_CONFIG ;
 int VT1211_REG_UCH_CONFIG ;
 scalar_t__ int_mode ;
 int uch_config ;
 int vid_which_vrm () ;
 int vt1211_read8 (struct vt1211_data*,int ) ;
 int vt1211_write8 (struct vt1211_data*,int ,int) ;

__attribute__((used)) static void vt1211_init_device(struct vt1211_data *data)
{

 data->vrm = vid_which_vrm();


 data->uch_config = vt1211_read8(data, VT1211_REG_UCH_CONFIG);
 if (uch_config > -1) {
  data->uch_config = (data->uch_config & 0x83) |
       (uch_config << 2);
  vt1211_write8(data, VT1211_REG_UCH_CONFIG, data->uch_config);
 }
 if (int_mode == 0) {
  vt1211_write8(data, VT1211_REG_TEMP1_CONFIG, 0);
  vt1211_write8(data, VT1211_REG_TEMP2_CONFIG, 0);
 }


 data->pwm_auto_pwm[0][3] = 255;
 data->pwm_auto_pwm[1][3] = 255;
}
