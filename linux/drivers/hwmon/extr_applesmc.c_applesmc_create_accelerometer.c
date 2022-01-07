
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * parent; } ;
struct TYPE_9__ {int bustype; } ;
struct input_dev {char* name; int * evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct TYPE_13__ {struct input_dev* input; int poll_interval; int poll; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int has_accelerometer; } ;


 int ABS_X ;
 int ABS_Y ;
 int APPLESMC_INPUT_FLAT ;
 int APPLESMC_INPUT_FUZZ ;
 int APPLESMC_POLL_INTERVAL ;
 int BIT_MASK (int ) ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_ABS ;
 int accelerometer_group ;
 int applesmc_calibrate () ;
 int applesmc_create_nodes (int ,int) ;
 int applesmc_destroy_nodes (int ) ;
 TYPE_5__* applesmc_idev ;
 int applesmc_idev_poll ;
 TYPE_5__* input_allocate_polled_device () ;
 int input_free_polled_device (TYPE_5__*) ;
 int input_register_polled_device (TYPE_5__*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 TYPE_4__* pdev ;
 int pr_warn (char*,int) ;
 TYPE_3__ smcreg ;

__attribute__((used)) static int applesmc_create_accelerometer(void)
{
 struct input_dev *idev;
 int ret;

 if (!smcreg.has_accelerometer)
  return 0;

 ret = applesmc_create_nodes(accelerometer_group, 1);
 if (ret)
  goto out;

 applesmc_idev = input_allocate_polled_device();
 if (!applesmc_idev) {
  ret = -ENOMEM;
  goto out_sysfs;
 }

 applesmc_idev->poll = applesmc_idev_poll;
 applesmc_idev->poll_interval = APPLESMC_POLL_INTERVAL;


 applesmc_calibrate();


 idev = applesmc_idev->input;
 idev->name = "applesmc";
 idev->id.bustype = BUS_HOST;
 idev->dev.parent = &pdev->dev;
 idev->evbit[0] = BIT_MASK(EV_ABS);
 input_set_abs_params(idev, ABS_X,
   -256, 256, APPLESMC_INPUT_FUZZ, APPLESMC_INPUT_FLAT);
 input_set_abs_params(idev, ABS_Y,
   -256, 256, APPLESMC_INPUT_FUZZ, APPLESMC_INPUT_FLAT);

 ret = input_register_polled_device(applesmc_idev);
 if (ret)
  goto out_idev;

 return 0;

out_idev:
 input_free_polled_device(applesmc_idev);

out_sysfs:
 applesmc_destroy_nodes(accelerometer_group);

out:
 pr_warn("driver init failed (ret=%d)!\n", ret);
 return ret;
}
