
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct twl6030_ideal_code {int dummy; } ;
struct twl6030_gpadc_data {int dev; TYPE_1__* twl6030_cal_tbl; TYPE_2__* pdata; } ;
struct TYPE_4__ {int nchannels; struct twl6030_ideal_code* ideal; } ;
struct TYPE_3__ {int gain; } ;


 int dev_dbg (int ,char*,int) ;
 int twl6030_gpadc_get_raw (struct twl6030_gpadc_data*,int,int*) ;
 int twl6030_gpadc_lookup (struct twl6030_ideal_code const*,int,int ) ;

__attribute__((used)) static int twl6030_gpadc_get_processed(struct twl6030_gpadc_data *gpadc,
  int channel, int *val)
{
 const struct twl6030_ideal_code *ideal = gpadc->pdata->ideal;
 int corrected_code;
 int channel_value;
 int i;
 int ret;

 ret = twl6030_gpadc_get_raw(gpadc, channel, &corrected_code);
 if (ret)
  return ret;

 i = twl6030_gpadc_lookup(ideal, channel, gpadc->pdata->nchannels);
 channel_value = corrected_code *
   gpadc->twl6030_cal_tbl[i].gain;


 channel_value /= 1000;

 dev_dbg(gpadc->dev, "GPADC corrected code: %d", corrected_code);
 dev_dbg(gpadc->dev, "GPADC value: %d", channel_value);

 *val = channel_value;

 return ret;
}
