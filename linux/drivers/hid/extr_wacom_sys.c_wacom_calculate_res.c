
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int unit; int unitExpo; int y_phy; int y_max; void* y_resolution; int x_phy; int x_max; void* x_resolution; } ;


 void* wacom_calc_hid_res (int ,int ,int,int) ;

__attribute__((used)) static void wacom_calculate_res(struct wacom_features *features)
{

 if (!features->unit) {
  features->unit = 0x11;
  features->unitExpo = -3;
 }

 features->x_resolution = wacom_calc_hid_res(features->x_max,
          features->x_phy,
          features->unit,
          features->unitExpo);
 features->y_resolution = wacom_calc_hid_res(features->y_max,
          features->y_phy,
          features->unit,
          features->unitExpo);
}
