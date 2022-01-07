
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct edt_reg_addr {int reg_offset_y; int reg_offset_x; int reg_offset; int reg_gain; int reg_threshold; } ;
struct edt_ft5x06_ts_data {void* offset_y; void* offset_x; void* offset; void* gain; void* threshold; struct edt_reg_addr reg_addr; } ;
struct device {int dummy; } ;


 int device_property_read_u32 (struct device*,char*,void**) ;
 int edt_ft5x06_register_write (struct edt_ft5x06_ts_data*,int ,void*) ;

__attribute__((used)) static void edt_ft5x06_ts_get_defaults(struct device *dev,
           struct edt_ft5x06_ts_data *tsdata)
{
 struct edt_reg_addr *reg_addr = &tsdata->reg_addr;
 u32 val;
 int error;

 error = device_property_read_u32(dev, "threshold", &val);
 if (!error) {
  edt_ft5x06_register_write(tsdata, reg_addr->reg_threshold, val);
  tsdata->threshold = val;
 }

 error = device_property_read_u32(dev, "gain", &val);
 if (!error) {
  edt_ft5x06_register_write(tsdata, reg_addr->reg_gain, val);
  tsdata->gain = val;
 }

 error = device_property_read_u32(dev, "offset", &val);
 if (!error) {
  edt_ft5x06_register_write(tsdata, reg_addr->reg_offset, val);
  tsdata->offset = val;
 }

 error = device_property_read_u32(dev, "offset-x", &val);
 if (!error) {
  edt_ft5x06_register_write(tsdata, reg_addr->reg_offset_x, val);
  tsdata->offset_x = val;
 }

 error = device_property_read_u32(dev, "offset-y", &val);
 if (!error) {
  edt_ft5x06_register_write(tsdata, reg_addr->reg_offset_y, val);
  tsdata->offset_y = val;
 }
}
