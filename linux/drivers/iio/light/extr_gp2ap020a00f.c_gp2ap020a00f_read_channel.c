
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_chan_spec {int scan_index; int address; } ;
struct gp2ap020a00f_data {TYPE_1__* client; } ;
typedef enum gp2ap020a00f_cmd { ____Placeholder_gp2ap020a00f_cmd } gp2ap020a00f_cmd ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int GP2AP020A00F_CMD_READ_RAW_CLEAR ;
 int GP2AP020A00F_CMD_READ_RAW_IR ;
 int GP2AP020A00F_CMD_READ_RAW_PROXIMITY ;
 int GP2AP020A00F_OPMODE_SHUTDOWN ;



 int dev_err (int *,char*) ;
 int gp2ap020a00f_exec_cmd (struct gp2ap020a00f_data*,int) ;
 int gp2ap020a00f_output_to_lux (struct gp2ap020a00f_data*,int*) ;
 int gp2ap020a00f_read_output (struct gp2ap020a00f_data*,int ,int*) ;
 int gp2ap020a00f_set_operation_mode (struct gp2ap020a00f_data*,int ) ;

__attribute__((used)) static int gp2ap020a00f_read_channel(struct gp2ap020a00f_data *data,
    struct iio_chan_spec const *chan, int *val)
{
 enum gp2ap020a00f_cmd cmd;
 int err;

 switch (chan->scan_index) {
 case 130:
  cmd = GP2AP020A00F_CMD_READ_RAW_CLEAR;
  break;
 case 129:
  cmd = GP2AP020A00F_CMD_READ_RAW_IR;
  break;
 case 128:
  cmd = GP2AP020A00F_CMD_READ_RAW_PROXIMITY;
  break;
 default:
  return -EINVAL;
 }

 err = gp2ap020a00f_exec_cmd(data, cmd);
 if (err < 0) {
  dev_err(&data->client->dev,
   "gp2ap020a00f_exec_cmd failed\n");
  goto error_ret;
 }

 err = gp2ap020a00f_read_output(data, chan->address, val);
 if (err < 0)
  dev_err(&data->client->dev,
   "gp2ap020a00f_read_output failed\n");

 err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_SHUTDOWN);
 if (err < 0)
  dev_err(&data->client->dev,
   "Failed to shut down the device.\n");

 if (cmd == GP2AP020A00F_CMD_READ_RAW_CLEAR ||
     cmd == GP2AP020A00F_CMD_READ_RAW_IR)
  gp2ap020a00f_output_to_lux(data, val);

error_ret:
 return err;
}
