
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct twl6030_ideal_code {int dummy; } ;
struct twl6030_gpadc_data {TYPE_2__* twl6030_cal_tbl; TYPE_1__* pdata; } ;
struct TYPE_4__ {int offset_error; int gain_error; } ;
struct TYPE_3__ {int nchannels; struct twl6030_ideal_code* ideal; } ;


 int twl6030_gpadc_lookup (struct twl6030_ideal_code const*,int,int ) ;

__attribute__((used)) static int twl6030_gpadc_make_correction(struct twl6030_gpadc_data *gpadc,
  int channel, int raw_code)
{
 const struct twl6030_ideal_code *ideal = gpadc->pdata->ideal;
 int corrected_code;
 int i;

 i = twl6030_gpadc_lookup(ideal, channel, gpadc->pdata->nchannels);
 corrected_code = ((raw_code * 1000) -
  gpadc->twl6030_cal_tbl[i].offset_error) /
  gpadc->twl6030_cal_tbl[i].gain_error;

 return corrected_code;
}
