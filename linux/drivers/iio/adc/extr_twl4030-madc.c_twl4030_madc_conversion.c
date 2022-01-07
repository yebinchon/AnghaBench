
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct twl4030_madc_request {size_t method; int raw; int rbuf; int channels; scalar_t__ do_avg; } ;
struct twl4030_madc_conversion_method {int rbase; int ctrl; int avg; int sel; } ;
struct TYPE_7__ {int lock; TYPE_1__* requests; int dev; } ;
struct TYPE_6__ {int active; } ;


 int EBUSY ;
 int EINVAL ;
 size_t TWL4030_MADC_RT ;
 size_t TWL4030_MADC_SW2 ;
 int TWL4030_MODULE_MADC ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl4030_madc_conversion_method* twl4030_conversion_methods ;
 TYPE_2__* twl4030_madc ;
 int twl4030_madc_read_channels (TYPE_2__*,int ,int ,int ,int ) ;
 int twl4030_madc_start_conversion (TYPE_2__*,size_t) ;
 int twl4030_madc_wait_conversion_ready (TYPE_2__*,int,int ) ;
 int twl_i2c_write_u16 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_madc_conversion(struct twl4030_madc_request *req)
{
 const struct twl4030_madc_conversion_method *method;
 int ret;

 if (!req || !twl4030_madc)
  return -EINVAL;

 mutex_lock(&twl4030_madc->lock);
 if (req->method < TWL4030_MADC_RT || req->method > TWL4030_MADC_SW2) {
  ret = -EINVAL;
  goto out;
 }

 if (twl4030_madc->requests[req->method].active) {
  ret = -EBUSY;
  goto out;
 }
 method = &twl4030_conversion_methods[req->method];

 ret = twl_i2c_write_u16(TWL4030_MODULE_MADC, req->channels, method->sel);
 if (ret) {
  dev_err(twl4030_madc->dev,
   "unable to write sel register 0x%X\n", method->sel);
  goto out;
 }

 if (req->do_avg) {
  ret = twl_i2c_write_u16(TWL4030_MODULE_MADC, req->channels,
           method->avg);
  if (ret) {
   dev_err(twl4030_madc->dev,
    "unable to write avg register 0x%X\n",
    method->avg);
   goto out;
  }
 }

 if (req->method == TWL4030_MADC_RT) {
  ret = -EINVAL;
  goto out;
 }
 ret = twl4030_madc_start_conversion(twl4030_madc, req->method);
 if (ret < 0)
  goto out;
 twl4030_madc->requests[req->method].active = 1;

 ret = twl4030_madc_wait_conversion_ready(twl4030_madc, 5, method->ctrl);
 if (ret) {
  twl4030_madc->requests[req->method].active = 0;
  goto out;
 }
 ret = twl4030_madc_read_channels(twl4030_madc, method->rbase,
      req->channels, req->rbuf, req->raw);
 twl4030_madc->requests[req->method].active = 0;

out:
 mutex_unlock(&twl4030_madc->lock);

 return ret;
}
