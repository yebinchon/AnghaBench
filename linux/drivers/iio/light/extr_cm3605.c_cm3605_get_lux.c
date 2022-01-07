
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm3605 {int als_max; int dev; int aout; } ;
typedef int s64 ;


 int CM3605_AOUT_MAX_MV ;
 int CM3605_AOUT_TYP_MAX_MV ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int div64_s64 (int,int ) ;
 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int cm3605_get_lux(struct cm3605 *cm3605)
{
 int ret, res;
 s64 lux;

 ret = iio_read_channel_processed(cm3605->aout, &res);
 if (ret < 0)
  return ret;

 dev_dbg(cm3605->dev, "read %d mV from ADC\n", res);







 if (res < 30)
  return 0;
 if (res > CM3605_AOUT_MAX_MV)
  dev_err(cm3605->dev, "device out of range\n");


 lux = res - 30;


 lux *= cm3605->als_max;
 lux = div64_s64(lux, CM3605_AOUT_TYP_MAX_MV);

 return lux;
}
