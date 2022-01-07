
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm95241_data {int config; int model; int status; int * temp; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int EOPNOTSUPP ;
 int R1DF_MASK ;
 int R1DM ;
 int R1MS_MASK ;
 int R2DF_MASK ;
 int R2DM ;
 int R2MS_MASK ;





 struct lm95241_data* lm95241_update_device (struct device*) ;
 long temp_from_reg_signed (int ,int ) ;
 long temp_from_reg_unsigned (int ,int ) ;

__attribute__((used)) static int lm95241_read_temp(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct lm95241_data *data = lm95241_update_device(dev);

 switch (attr) {
 case 131:
  if (!channel || (data->config & BIT(channel - 1)))
   *val = temp_from_reg_signed(data->temp[channel * 2],
      data->temp[channel * 2 + 1]);
  else
   *val = temp_from_reg_unsigned(data->temp[channel * 2],
      data->temp[channel * 2 + 1]);
  return 0;
 case 129:
  if (channel == 1)
   *val = (data->config & R1DF_MASK) ? -128000 : 0;
  else
   *val = (data->config & R2DF_MASK) ? -128000 : 0;
  return 0;
 case 130:
  if (channel == 1)
   *val = (data->config & R1DF_MASK) ? 127875 : 255875;
  else
   *val = (data->config & R2DF_MASK) ? 127875 : 255875;
  return 0;
 case 128:
  if (channel == 1)
   *val = (data->model & R1MS_MASK) ? 1 : 2;
  else
   *val = (data->model & R2MS_MASK) ? 1 : 2;
  return 0;
 case 132:
  if (channel == 1)
   *val = !!(data->status & R1DM);
  else
   *val = !!(data->status & R2DM);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
