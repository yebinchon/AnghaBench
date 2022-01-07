
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bmp280_data {TYPE_1__* chip_info; int oversampling_press; } ;
struct TYPE_2__ {int* oversampling_press_avail; int num_oversampling_press_avail; int (* chip_config ) (struct bmp280_data*) ;} ;


 int EINVAL ;
 int ilog2 (int) ;
 int stub1 (struct bmp280_data*) ;

__attribute__((used)) static int bmp280_write_oversampling_ratio_press(struct bmp280_data *data,
            int val)
{
 int i;
 const int *avail = data->chip_info->oversampling_press_avail;
 const int n = data->chip_info->num_oversampling_press_avail;

 for (i = 0; i < n; i++) {
  if (avail[i] == val) {
   data->oversampling_press = ilog2(val);

   return data->chip_info->chip_config(data);
  }
 }
 return -EINVAL;
}
