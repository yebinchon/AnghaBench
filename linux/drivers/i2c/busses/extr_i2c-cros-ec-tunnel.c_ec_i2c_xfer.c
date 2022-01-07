
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct ec_i2c_device* algo_data; } ;
struct ec_i2c_device {int ec; int remote_bus; struct device* dev; } ;
struct device {int dummy; } ;
struct cros_ec_command {int outsize; int insize; int data; int command; scalar_t__ version; } ;


 int EC_CMD_I2C_PASSTHRU ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int) ;
 int ec_i2c_construct_message (int ,struct i2c_msg*,int,int const) ;
 int ec_i2c_count_message (struct i2c_msg*,int) ;
 int ec_i2c_count_response (struct i2c_msg*,int) ;
 int ec_i2c_parse_response (int ,struct i2c_msg*,int*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (int,int ) ;
 int max (int,int) ;

__attribute__((used)) static int ec_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg i2c_msgs[],
         int num)
{
 struct ec_i2c_device *bus = adap->algo_data;
 struct device *dev = bus->dev;
 const u16 bus_num = bus->remote_bus;
 int request_len;
 int response_len;
 int alloc_size;
 int result;
 struct cros_ec_command *msg;

 request_len = ec_i2c_count_message(i2c_msgs, num);
 if (request_len < 0) {
  dev_warn(dev, "Error constructing message %d\n", request_len);
  return request_len;
 }

 response_len = ec_i2c_count_response(i2c_msgs, num);
 if (response_len < 0) {

  dev_warn(dev, "Error preparing response %d\n", response_len);
  return response_len;
 }

 alloc_size = max(request_len, response_len);
 msg = kmalloc(sizeof(*msg) + alloc_size, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 result = ec_i2c_construct_message(msg->data, i2c_msgs, num, bus_num);
 if (result) {
  dev_err(dev, "Error constructing EC i2c message %d\n", result);
  goto exit;
 }

 msg->version = 0;
 msg->command = EC_CMD_I2C_PASSTHRU;
 msg->outsize = request_len;
 msg->insize = response_len;

 result = cros_ec_cmd_xfer_status(bus->ec, msg);
 if (result < 0) {
  dev_err(dev, "Error transferring EC i2c message %d\n", result);
  goto exit;
 }

 result = ec_i2c_parse_response(msg->data, i2c_msgs, &num);
 if (result < 0)
  goto exit;


 result = num;
exit:
 kfree(msg);
 return result;
}
