
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gp2ap020a00f_data {TYPE_1__* client; int flags; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int GP2AP020A00F_ALS_REG ;
 int GP2AP020A00F_FLAG_ALS_FALLING_EV ;
 int GP2AP020A00F_FLAG_ALS_RISING_EV ;
 int GP2AP020A00F_FLAG_LUX_MODE_HI ;
 int GP2AP020A00F_OP3_MASK ;
 int GP2AP020A00F_OP3_OPERATION ;
 int GP2AP020A00F_OP3_SHUTDOWN ;
 int GP2AP020A00F_OP_REG ;
 int GP2AP020A00F_RANGE_A_MASK ;
 int GP2AP020A00F_RANGE_A_x128 ;
 int GP2AP020A00F_RANGE_A_x8 ;
 int GP2AP020A00F_THRESH_TH ;
 int GP2AP020A00F_THRESH_TL ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int gp2ap020a00f_write_event_threshold (struct gp2ap020a00f_data*,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool gp2ap020a00f_adjust_lux_mode(struct gp2ap020a00f_data *data,
     int output_val)
{
 u8 new_range = 0xff;
 int err;

 if (!test_bit(GP2AP020A00F_FLAG_LUX_MODE_HI, &data->flags)) {
  if (output_val > 16000) {
   set_bit(GP2AP020A00F_FLAG_LUX_MODE_HI, &data->flags);
   new_range = GP2AP020A00F_RANGE_A_x128;
  }
 } else {
  if (output_val < 1000) {
   clear_bit(GP2AP020A00F_FLAG_LUX_MODE_HI, &data->flags);
   new_range = GP2AP020A00F_RANGE_A_x8;
  }
 }

 if (new_range != 0xff) {



  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TH, 0);
  if (err < 0) {
   dev_err(&data->client->dev,
    "Clearing als threshold register failed.\n");
   return 0;
  }

  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TL, 0);
  if (err < 0) {
   dev_err(&data->client->dev,
    "Clearing als threshold register failed.\n");
   return 0;
  }


  err = regmap_update_bits(data->regmap,
   GP2AP020A00F_OP_REG,
   GP2AP020A00F_OP3_MASK,
   GP2AP020A00F_OP3_SHUTDOWN);

  if (err < 0) {
   dev_err(&data->client->dev,
    "Shutting down the device failed.\n");
   return 0;
  }

  err = regmap_update_bits(data->regmap,
   GP2AP020A00F_ALS_REG,
   GP2AP020A00F_RANGE_A_MASK,
   new_range);

  if (err < 0) {
   dev_err(&data->client->dev,
    "Adjusting device lux mode failed.\n");
   return 0;
  }

  err = regmap_update_bits(data->regmap,
   GP2AP020A00F_OP_REG,
   GP2AP020A00F_OP3_MASK,
   GP2AP020A00F_OP3_OPERATION);

  if (err < 0) {
   dev_err(&data->client->dev,
    "Powering up the device failed.\n");
   return 0;
  }


  if (test_bit(GP2AP020A00F_FLAG_ALS_RISING_EV, &data->flags)) {
   err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TH, 1);
   if (err < 0) {
    dev_err(&data->client->dev,
    "Adjusting als threshold value failed.\n");
    return 0;
   }
  }

  if (test_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV, &data->flags)) {
   err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TL, 1);
   if (err < 0) {
    dev_err(&data->client->dev,
    "Adjusting als threshold value failed.\n");
    return 0;
   }
  }

  return 1;
 }

 return 0;
}
