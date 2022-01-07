
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct twl6030_gpadc_data {TYPE_1__* pdata; int dev; } ;
typedef int __le16 ;
struct TYPE_2__ {int (* channel_to_reg ) (int) ;} ;


 int dev_dbg (int ,char*,int) ;
 int le16_to_cpu (int ) ;
 int stub1 (int) ;
 scalar_t__ twl6030_channel_calibrated (TYPE_1__*,int) ;
 int twl6030_gpadc_make_correction (struct twl6030_gpadc_data*,int,int) ;
 int twl6030_gpadc_read (int,int*) ;

__attribute__((used)) static int twl6030_gpadc_get_raw(struct twl6030_gpadc_data *gpadc,
  int channel, int *res)
{
 u8 reg = gpadc->pdata->channel_to_reg(channel);
 __le16 val;
 int raw_code;
 int ret;

 ret = twl6030_gpadc_read(reg, (u8 *)&val);
 if (ret) {
  dev_dbg(gpadc->dev, "unable to read register 0x%X\n", reg);
  return ret;
 }

 raw_code = le16_to_cpu(val);
 dev_dbg(gpadc->dev, "GPADC raw code: %d", raw_code);

 if (twl6030_channel_calibrated(gpadc->pdata, channel))
  *res = twl6030_gpadc_make_correction(gpadc, channel, raw_code);
 else
  *res = raw_code;

 return ret;
}
