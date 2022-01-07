
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1133_data {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int resp ;
typedef int __be16 ;


 int BIT (int ) ;
 int SI1133_REG_HOSTOUT (int ) ;
 int be16_to_cpu (int ) ;
 int si1133_bulk_read (struct si1133_data*,int ,int,int *) ;
 int si1133_set_adcmux (struct si1133_data*,int ,int ) ;
 int si1133_set_chlist (struct si1133_data*,int ) ;

__attribute__((used)) static int si1133_measure(struct si1133_data *data,
     struct iio_chan_spec const *chan,
     int *val)
{
 int err;

 __be16 resp;

 err = si1133_set_adcmux(data, 0, chan->channel);
 if (err)
  return err;


 err = si1133_set_chlist(data, BIT(0));
 if (err)
  return err;

 err = si1133_bulk_read(data, SI1133_REG_HOSTOUT(0), sizeof(resp),
          (u8 *)&resp);
 if (err)
  return err;

 *val = be16_to_cpu(resp);

 return err;
}
