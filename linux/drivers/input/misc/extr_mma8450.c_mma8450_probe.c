
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mma8450 {struct input_polled_dev* idev; struct i2c_client* client; } ;
struct input_polled_dev {TYPE_2__* input; int close; int open; int poll_interval_max; int poll_interval; int poll; struct mma8450* private; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int bustype; } ;
struct TYPE_4__ {int evbit; TYPE_1__ id; int name; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_ABS ;
 int GFP_KERNEL ;
 int MMA8450_DRV_NAME ;
 int POLL_INTERVAL ;
 int POLL_INTERVAL_MAX ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 struct input_polled_dev* devm_input_allocate_polled_device (int *) ;
 struct mma8450* devm_kzalloc (int *,int,int ) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_abs_params (TYPE_2__*,int ,int,int,int,int) ;
 int mma8450_close ;
 int mma8450_open ;
 int mma8450_poll ;

__attribute__((used)) static int mma8450_probe(struct i2c_client *c,
    const struct i2c_device_id *id)
{
 struct input_polled_dev *idev;
 struct mma8450 *m;
 int err;

 m = devm_kzalloc(&c->dev, sizeof(*m), GFP_KERNEL);
 if (!m)
  return -ENOMEM;

 idev = devm_input_allocate_polled_device(&c->dev);
 if (!idev)
  return -ENOMEM;

 m->client = c;
 m->idev = idev;

 idev->private = m;
 idev->input->name = MMA8450_DRV_NAME;
 idev->input->id.bustype = BUS_I2C;
 idev->poll = mma8450_poll;
 idev->poll_interval = POLL_INTERVAL;
 idev->poll_interval_max = POLL_INTERVAL_MAX;
 idev->open = mma8450_open;
 idev->close = mma8450_close;

 __set_bit(EV_ABS, idev->input->evbit);
 input_set_abs_params(idev->input, ABS_X, -2048, 2047, 32, 32);
 input_set_abs_params(idev->input, ABS_Y, -2048, 2047, 32, 32);
 input_set_abs_params(idev->input, ABS_Z, -2048, 2047, 32, 32);

 err = input_register_polled_device(idev);
 if (err) {
  dev_err(&c->dev, "failed to register polled input device\n");
  return err;
 }

 return 0;
}
