
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_ideal_code {int code2; } ;
struct twl6030_gpadc_platform_data {struct twl6030_ideal_code* ideal; int nchannels; } ;


 int twl6030_gpadc_lookup (struct twl6030_ideal_code const*,int,int ) ;

__attribute__((used)) static int twl6030_channel_calibrated(const struct twl6030_gpadc_platform_data
  *pdata, int channel)
{
 const struct twl6030_ideal_code *ideal = pdata->ideal;
 int i;

 i = twl6030_gpadc_lookup(ideal, channel, pdata->nchannels);

 return pdata->ideal[i].code2;
}
