
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5761_state {int use_intref; int vref; int * vref_reg; TYPE_1__* spi; } ;
struct ad5761_chip_info {int int_vref; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int * devm_regulator_get_optional (int *,char*) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;
 int regulator_get_voltage (int *) ;

__attribute__((used)) static int ad5761_get_vref(struct ad5761_state *st,
      const struct ad5761_chip_info *chip_info)
{
 int ret;

 st->vref_reg = devm_regulator_get_optional(&st->spi->dev, "vref");
 if (PTR_ERR(st->vref_reg) == -ENODEV) {

  if (!chip_info->int_vref) {
   dev_err(&st->spi->dev,
    "Voltage reference not found\n");
   return -EIO;
  }

  st->use_intref = 1;
  st->vref = chip_info->int_vref;
  return 0;
 }

 if (IS_ERR(st->vref_reg)) {
  dev_err(&st->spi->dev,
   "Error getting voltage reference regulator\n");
  return PTR_ERR(st->vref_reg);
 }

 ret = regulator_enable(st->vref_reg);
 if (ret) {
  dev_err(&st->spi->dev,
    "Failed to enable voltage reference\n");
  return ret;
 }

 ret = regulator_get_voltage(st->vref_reg);
 if (ret < 0) {
  dev_err(&st->spi->dev,
    "Failed to get voltage reference value\n");
  goto disable_regulator_vref;
 }

 if (ret < 2000000 || ret > 3000000) {
  dev_warn(&st->spi->dev,
    "Invalid external voltage ref. value %d uV\n", ret);
  ret = -EIO;
  goto disable_regulator_vref;
 }

 st->vref = ret / 1000;
 st->use_intref = 0;

 return 0;

disable_regulator_vref:
 regulator_disable(st->vref_reg);
 st->vref_reg = ((void*)0);
 return ret;
}
