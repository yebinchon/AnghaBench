
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9052_hwmon {int da9052; } ;






 int DA9052_TSICONTB_TSIMAN ;
 int DA9052_TSICONTB_TSIMUX_XN ;
 int DA9052_TSICONTB_TSIMUX_XP ;
 int DA9052_TSICONTB_TSIMUX_YN ;
 int DA9052_TSICONTB_TSIMUX_YP ;
 int DA9052_TSI_CONT_B_REG ;
 int da9052_reg_write (int ,int ,int ) ;

__attribute__((used)) static int da9052_request_tsi_read(struct da9052_hwmon *hwmon, int channel)
{
 u8 val = DA9052_TSICONTB_TSIMAN;

 switch (channel) {
 case 130:
  val |= DA9052_TSICONTB_TSIMUX_XP;
  break;
 case 128:
  val |= DA9052_TSICONTB_TSIMUX_YP;
  break;
 case 131:
  val |= DA9052_TSICONTB_TSIMUX_XN;
  break;
 case 129:
  val |= DA9052_TSICONTB_TSIMUX_YN;
  break;
 }

 return da9052_reg_write(hwmon->da9052, DA9052_TSI_CONT_B_REG, val);
}
