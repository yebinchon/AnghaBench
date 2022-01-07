
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int dev; int (* tsc200x_cmd ) (int ,int ) ;int regmap; } ;


 int TSC200X_CFR0_INITVALUE ;
 int TSC200X_CFR1_INITVALUE ;
 int TSC200X_CFR2_INITVALUE ;
 int TSC200X_CMD_NORMAL ;
 int TSC200X_REG_CFR0 ;
 int TSC200X_REG_CFR1 ;
 int TSC200X_REG_CFR2 ;
 int regmap_write (int ,int ,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void tsc200x_start_scan(struct tsc200x *ts)
{
 regmap_write(ts->regmap, TSC200X_REG_CFR0, TSC200X_CFR0_INITVALUE);
 regmap_write(ts->regmap, TSC200X_REG_CFR1, TSC200X_CFR1_INITVALUE);
 regmap_write(ts->regmap, TSC200X_REG_CFR2, TSC200X_CFR2_INITVALUE);
 ts->tsc200x_cmd(ts->dev, TSC200X_CMD_NORMAL);
}
