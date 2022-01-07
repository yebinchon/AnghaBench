
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9052_hwmon {int da9052; } ;


 int ARRAY_SIZE (int*) ;




 int DA9052_TSILSB_TSIXL ;
 int DA9052_TSILSB_TSIXL_BITS ;
 int DA9052_TSILSB_TSIXL_SHIFT ;
 int DA9052_TSILSB_TSIYL ;
 int DA9052_TSILSB_TSIYL_BITS ;
 int DA9052_TSILSB_TSIYL_SHIFT ;
 int DA9052_TSI_X_MSB_REG ;
 int EINVAL ;
 int da9052_group_read (int ,int ,int ,int*) ;

__attribute__((used)) static int da9052_get_tsi_result(struct da9052_hwmon *hwmon, int channel)
{
 u8 regs[3];
 int msb, lsb, err;


 err = da9052_group_read(hwmon->da9052, DA9052_TSI_X_MSB_REG,
    ARRAY_SIZE(regs), regs);
 if (err)
  return err;

 switch (channel) {
 case 130:
 case 131:
  msb = regs[0] << DA9052_TSILSB_TSIXL_BITS;
  lsb = regs[2] & DA9052_TSILSB_TSIXL;
  lsb >>= DA9052_TSILSB_TSIXL_SHIFT;
  break;
 case 128:
 case 129:
  msb = regs[1] << DA9052_TSILSB_TSIYL_BITS;
  lsb = regs[2] & DA9052_TSILSB_TSIYL;
  lsb >>= DA9052_TSILSB_TSIYL_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 return msb | lsb;
}
