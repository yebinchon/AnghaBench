
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int u16 ;
typedef int tregs ;
struct bmc150_magn_trim_regs {int dummy; } ;
struct bmc150_magn_data {int regmap; } ;
typedef int s32 ;
typedef int s16 ;
typedef struct bmc150_magn_trim_regs __le16 ;


 size_t AXIS_X ;
 int AXIS_XYZR_MAX ;
 size_t AXIS_Y ;
 size_t AXIS_Z ;
 int BMC150_MAGN_REG_TRIM_START ;
 int BMC150_MAGN_REG_X_L ;
 int BMC150_MAGN_SHIFT_RHALL_L ;
 int BMC150_MAGN_SHIFT_XY_L ;
 int BMC150_MAGN_SHIFT_Z_L ;
 size_t RHALL ;
 int bmc150_magn_compensate_x (struct bmc150_magn_trim_regs*,int,int) ;
 int bmc150_magn_compensate_y (struct bmc150_magn_trim_regs*,int,int) ;
 int bmc150_magn_compensate_z (struct bmc150_magn_trim_regs*,int,int) ;
 int le16_to_cpu (struct bmc150_magn_trim_regs) ;
 int regmap_bulk_read (int ,int ,struct bmc150_magn_trim_regs*,int) ;

__attribute__((used)) static int bmc150_magn_read_xyz(struct bmc150_magn_data *data, s32 *buffer)
{
 int ret;
 __le16 values[AXIS_XYZR_MAX];
 s16 raw_x, raw_y, raw_z;
 u16 rhall;
 struct bmc150_magn_trim_regs tregs;

 ret = regmap_bulk_read(data->regmap, BMC150_MAGN_REG_X_L,
          values, sizeof(values));
 if (ret < 0)
  return ret;

 raw_x = (s16)le16_to_cpu(values[AXIS_X]) >> BMC150_MAGN_SHIFT_XY_L;
 raw_y = (s16)le16_to_cpu(values[AXIS_Y]) >> BMC150_MAGN_SHIFT_XY_L;
 raw_z = (s16)le16_to_cpu(values[AXIS_Z]) >> BMC150_MAGN_SHIFT_Z_L;
 rhall = le16_to_cpu(values[RHALL]) >> BMC150_MAGN_SHIFT_RHALL_L;

 ret = regmap_bulk_read(data->regmap, BMC150_MAGN_REG_TRIM_START,
          &tregs, sizeof(tregs));
 if (ret < 0)
  return ret;

 buffer[AXIS_X] = bmc150_magn_compensate_x(&tregs, raw_x, rhall);
 buffer[AXIS_Y] = bmc150_magn_compensate_y(&tregs, raw_y, rhall);
 buffer[AXIS_Z] = bmc150_magn_compensate_z(&tregs, raw_z, rhall);

 return 0;
}
