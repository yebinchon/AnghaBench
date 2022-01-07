
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct hts221_hw {TYPE_1__* sensors; int regmap; } ;
typedef int s32 ;
typedef int s16 ;
typedef int __le16 ;
struct TYPE_2__ {int slope; int b_gen; } ;


 int HTS221_REG_0T_CAL_X_L ;
 int HTS221_REG_0T_CAL_Y_H ;
 int HTS221_REG_1T_CAL_X_L ;
 int HTS221_REG_1T_CAL_Y_H ;
 int HTS221_REG_T1_T0_CAL_Y_H ;
 size_t HTS221_SENSOR_T ;
 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int hts221_parse_temp_caldata(struct hts221_hw *hw)
{
 int err, *slope, *b_gen, cal0, cal1;
 s16 cal_x0, cal_x1, cal_y0, cal_y1;
 __le16 val;

 err = regmap_read(hw->regmap, HTS221_REG_0T_CAL_Y_H, &cal0);
 if (err < 0)
  return err;

 err = regmap_read(hw->regmap, HTS221_REG_T1_T0_CAL_Y_H, &cal1);
 if (err < 0)
  return err;
 cal_y0 = ((cal1 & 0x3) << 8) | cal0;

 err = regmap_read(hw->regmap, HTS221_REG_1T_CAL_Y_H, &cal0);
 if (err < 0)
  return err;
 cal_y1 = (((cal1 & 0xc) >> 2) << 8) | cal0;

 err = regmap_bulk_read(hw->regmap, HTS221_REG_0T_CAL_X_L,
          &val, sizeof(val));
 if (err < 0)
  return err;
 cal_x0 = le16_to_cpu(val);

 err = regmap_bulk_read(hw->regmap, HTS221_REG_1T_CAL_X_L,
          &val, sizeof(val));
 if (err < 0)
  return err;
 cal_x1 = le16_to_cpu(val);

 slope = &hw->sensors[HTS221_SENSOR_T].slope;
 b_gen = &hw->sensors[HTS221_SENSOR_T].b_gen;

 *slope = ((cal_y1 - cal_y0) * 8000) / (cal_x1 - cal_x0);
 *b_gen = (((s32)cal_x1 * cal_y0 - (s32)cal_x0 * cal_y1) * 1000) /
   (cal_x1 - cal_x0);
 *b_gen *= 8;

 return 0;
}
