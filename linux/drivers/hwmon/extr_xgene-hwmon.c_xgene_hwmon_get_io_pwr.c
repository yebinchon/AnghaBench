
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_hwmon_dev {int dummy; } ;


 int SOC_PWR_MW_REG ;
 int SOC_PWR_REG ;
 scalar_t__ WATT_TO_mWATT (scalar_t__) ;
 int xgene_hwmon_reg_map_rd (struct xgene_hwmon_dev*,int ,scalar_t__*) ;

__attribute__((used)) static int xgene_hwmon_get_io_pwr(struct xgene_hwmon_dev *ctx, u32 *val)
{
 u32 watt, mwatt;
 int rc;

 rc = xgene_hwmon_reg_map_rd(ctx, SOC_PWR_REG, &watt);
 if (rc < 0)
  return rc;

 rc = xgene_hwmon_reg_map_rd(ctx, SOC_PWR_MW_REG, &mwatt);
 if (rc < 0)
  return rc;

 *val = WATT_TO_mWATT(watt) + mwatt;
 return 0;
}
