
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; int evbit; int close; int open; TYPE_1__ id; } ;
struct device {int dummy; } ;
struct cma3000_platform_data {scalar_t__ mode; int g_range; int irqflags; int fuzz_z; int fuzz_y; int fuzz_x; } ;
struct cma3000_bus_ops {int bustype; } ;
struct cma3000_accl_data {int irq; scalar_t__ mode; int g_range; struct input_dev* input_dev; int mutex; struct cma3000_platform_data const* pdata; struct cma3000_bus_ops const* bus_ops; struct device* dev; } ;


 int ABS_MISC ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int CMA3000_READ (struct cma3000_accl_data*,int ,char*) ;
 int CMA3000_REVID ;
 scalar_t__ CMAMODE_MOTDET ;
 scalar_t__ CMAMODE_POFF ;
 int CMARANGE_2G ;
 int CMARANGE_8G ;
 int EINVAL ;
 int ENOMEM ;
 struct cma3000_accl_data* ERR_PTR (int) ;
 int EV_ABS ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int __set_bit (int ,int ) ;
 int cma3000_close ;
 int cma3000_open ;
 int cma3000_reset (struct cma3000_accl_data*) ;
 int cma3000_thread_irq ;
 int dev_err (struct device*,char*) ;
 struct cma3000_platform_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int free_irq (int,struct cma3000_accl_data*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct cma3000_accl_data*) ;
 int kfree (struct cma3000_accl_data*) ;
 struct cma3000_accl_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_info (char*,int) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct cma3000_accl_data*) ;

struct cma3000_accl_data *cma3000_init(struct device *dev, int irq,
           const struct cma3000_bus_ops *bops)
{
 const struct cma3000_platform_data *pdata = dev_get_platdata(dev);
 struct cma3000_accl_data *data;
 struct input_dev *input_dev;
 int rev;
 int error;

 if (!pdata) {
  dev_err(dev, "platform data not found\n");
  error = -EINVAL;
  goto err_out;
 }



 if (irq == 0) {
  error = -EINVAL;
  goto err_out;
 }

 data = kzalloc(sizeof(struct cma3000_accl_data), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!data || !input_dev) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 data->dev = dev;
 data->input_dev = input_dev;
 data->bus_ops = bops;
 data->pdata = pdata;
 data->irq = irq;
 mutex_init(&data->mutex);

 data->mode = pdata->mode;
 if (data->mode > CMAMODE_POFF) {
  data->mode = CMAMODE_MOTDET;
  dev_warn(dev,
    "Invalid mode specified, assuming Motion Detect\n");
 }

 data->g_range = pdata->g_range;
 if (data->g_range != CMARANGE_2G && data->g_range != CMARANGE_8G) {
  dev_info(dev,
    "Invalid G range specified, assuming 8G\n");
  data->g_range = CMARANGE_8G;
 }

 input_dev->name = "cma3000-accelerometer";
 input_dev->id.bustype = bops->bustype;
 input_dev->open = cma3000_open;
 input_dev->close = cma3000_close;

  __set_bit(EV_ABS, input_dev->evbit);

 input_set_abs_params(input_dev, ABS_X,
   -data->g_range, data->g_range, pdata->fuzz_x, 0);
 input_set_abs_params(input_dev, ABS_Y,
   -data->g_range, data->g_range, pdata->fuzz_y, 0);
 input_set_abs_params(input_dev, ABS_Z,
   -data->g_range, data->g_range, pdata->fuzz_z, 0);
 input_set_abs_params(input_dev, ABS_MISC, 0, 1, 0, 0);

 input_set_drvdata(input_dev, data);

 error = cma3000_reset(data);
 if (error)
  goto err_free_mem;

 rev = CMA3000_READ(data, CMA3000_REVID, "Revid");
 if (rev < 0) {
  error = rev;
  goto err_free_mem;
 }

 pr_info("CMA3000 Accelerometer: Revision %x\n", rev);

 error = request_threaded_irq(irq, ((void*)0), cma3000_thread_irq,
         pdata->irqflags | IRQF_ONESHOT,
         "cma3000_d0x", data);
 if (error) {
  dev_err(dev, "request_threaded_irq failed\n");
  goto err_free_mem;
 }

 error = input_register_device(data->input_dev);
 if (error) {
  dev_err(dev, "Unable to register input device\n");
  goto err_free_irq;
 }

 return data;

err_free_irq:
 free_irq(irq, data);
err_free_mem:
 input_free_device(input_dev);
 kfree(data);
err_out:
 return ERR_PTR(error);
}
