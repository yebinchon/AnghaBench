
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_hwmon_dev {int dummy; } ;


 int SOC_TEMP_REG ;
 int xgene_hwmon_reg_map_rd (struct xgene_hwmon_dev*,int ,int *) ;

__attribute__((used)) static int xgene_hwmon_get_temp(struct xgene_hwmon_dev *ctx, u32 *val)
{
 return xgene_hwmon_reg_map_rd(ctx, SOC_TEMP_REG, val);
}
