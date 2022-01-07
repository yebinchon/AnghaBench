
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5758_state {int dc_dc_ilim; unsigned int dc_dc_mode; unsigned int slew_time; TYPE_1__* spi; } ;
typedef int ad5758_range ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AD5758_DCDC_MODE_DPC_VOLTAGE ;
 unsigned int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* ad5758_current_range ;
 int* ad5758_dc_dc_ilim ;
 int ad5758_find_out_range (struct ad5758_state*,int const*,unsigned int,unsigned int,unsigned int) ;
 int ad5758_is_valid_mode (unsigned int) ;
 int* ad5758_voltage_range ;
 int* bsearch (unsigned int*,int*,unsigned int,int,int ) ;
 int cmpfunc ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int device_property_read_u32 (int *,char*,unsigned int*) ;
 int device_property_read_u32_array (int *,char*,unsigned int*,int) ;

__attribute__((used)) static int ad5758_parse_dt(struct ad5758_state *st)
{
 unsigned int tmp, tmparray[2], size;
 const struct ad5758_range *range;
 int *index, ret;

 st->dc_dc_ilim = 0;
 ret = device_property_read_u32(&st->spi->dev,
           "adi,dc-dc-ilim-microamp", &tmp);
 if (ret) {
  dev_dbg(&st->spi->dev,
   "Missing \"dc-dc-ilim-microamp\" property\n");
 } else {
  index = bsearch(&tmp, ad5758_dc_dc_ilim,
    ARRAY_SIZE(ad5758_dc_dc_ilim),
    sizeof(int), cmpfunc);
  if (!index)
   dev_dbg(&st->spi->dev, "dc-dc-ilim out of range\n");
  else
   st->dc_dc_ilim = index - ad5758_dc_dc_ilim;
 }

 ret = device_property_read_u32(&st->spi->dev, "adi,dc-dc-mode",
           &st->dc_dc_mode);
 if (ret) {
  dev_err(&st->spi->dev, "Missing \"dc-dc-mode\" property\n");
  return ret;
 }

 if (!ad5758_is_valid_mode(st->dc_dc_mode))
  return -EINVAL;

 if (st->dc_dc_mode == AD5758_DCDC_MODE_DPC_VOLTAGE) {
  ret = device_property_read_u32_array(&st->spi->dev,
           "adi,range-microvolt",
           tmparray, 2);
  if (ret) {
   dev_err(&st->spi->dev,
    "Missing \"range-microvolt\" property\n");
   return ret;
  }
  range = ad5758_voltage_range;
  size = ARRAY_SIZE(ad5758_voltage_range);
 } else {
  ret = device_property_read_u32_array(&st->spi->dev,
           "adi,range-microamp",
           tmparray, 2);
  if (ret) {
   dev_err(&st->spi->dev,
    "Missing \"range-microamp\" property\n");
   return ret;
  }
  range = ad5758_current_range;
  size = ARRAY_SIZE(ad5758_current_range);
 }

 ret = ad5758_find_out_range(st, range, size, tmparray[0], tmparray[1]);
 if (ret) {
  dev_err(&st->spi->dev, "range invalid\n");
  return ret;
 }

 ret = device_property_read_u32(&st->spi->dev, "adi,slew-time-us", &tmp);
 if (ret) {
  dev_dbg(&st->spi->dev, "Missing \"slew-time-us\" property\n");
  st->slew_time = 0;
 } else {
  st->slew_time = tmp;
 }

 return 0;
}
