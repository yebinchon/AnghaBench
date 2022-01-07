
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int touchbuf ;
struct rpi_ts {int prop; struct input_polled_dev* poll_dev; scalar_t__ fw_regs_phys; int fw_regs_va; struct platform_device* pdev; } ;
struct rpi_firmware {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct input_polled_dev {struct rpi_ts* private; int poll; int poll_interval; struct input_dev* input; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct device_node {int dummy; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_HOST ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INPUT_MT_DIRECT ;
 int PAGE_SIZE ;
 int RPI_FIRMWARE_FRAMEBUFFER_SET_TOUCHBUF ;
 int RPI_TS_DEFAULT_HEIGHT ;
 int RPI_TS_DEFAULT_WIDTH ;
 int RPI_TS_MAX_SUPPORTED_POINTS ;
 int RPI_TS_POLL_INTERVAL ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_add_action_or_reset (struct device*,int ,struct rpi_ts*) ;
 struct input_polled_dev* devm_input_allocate_polled_device (struct device*) ;
 struct rpi_ts* devm_kzalloc (struct device*,int,int ) ;
 int dma_alloc_coherent (struct device*,int ,scalar_t__*,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct rpi_firmware* rpi_firmware_get (struct device_node*) ;
 int rpi_firmware_property (struct rpi_firmware*,int ,scalar_t__*,int) ;
 int rpi_ts_dma_cleanup ;
 int rpi_ts_poll ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int rpi_ts_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct input_polled_dev *poll_dev;
 struct device_node *fw_node;
 struct rpi_firmware *fw;
 struct input_dev *input;
 struct rpi_ts *ts;
 u32 touchbuf;
 int error;

 fw_node = of_get_parent(np);
 if (!fw_node) {
  dev_err(dev, "Missing firmware node\n");
  return -ENOENT;
 }

 fw = rpi_firmware_get(fw_node);
 of_node_put(fw_node);
 if (!fw)
  return -EPROBE_DEFER;

 ts = devm_kzalloc(dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;
 ts->pdev = pdev;

 ts->fw_regs_va = dma_alloc_coherent(dev, PAGE_SIZE, &ts->fw_regs_phys,
         GFP_KERNEL);
 if (!ts->fw_regs_va) {
  dev_err(dev, "failed to dma_alloc_coherent\n");
  return -ENOMEM;
 }

 error = devm_add_action_or_reset(dev, rpi_ts_dma_cleanup, ts);
 if (error) {
  dev_err(dev, "failed to devm_add_action_or_reset, %d\n", error);
  return error;
 }


 touchbuf = (u32)ts->fw_regs_phys;
 error = rpi_firmware_property(fw, RPI_FIRMWARE_FRAMEBUFFER_SET_TOUCHBUF,
          &touchbuf, sizeof(touchbuf));

 if (error || touchbuf != 0) {
  dev_warn(dev, "Failed to set touchbuf, %d\n", error);
  return error;
 }

 poll_dev = devm_input_allocate_polled_device(dev);
 if (!poll_dev) {
  dev_err(dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }
 ts->poll_dev = poll_dev;
 input = poll_dev->input;

 input->name = "raspberrypi-ts";
 input->id.bustype = BUS_HOST;
 poll_dev->poll_interval = RPI_TS_POLL_INTERVAL;
 poll_dev->poll = rpi_ts_poll;
 poll_dev->private = ts;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0,
        RPI_TS_DEFAULT_WIDTH, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0,
        RPI_TS_DEFAULT_HEIGHT, 0, 0);
 touchscreen_parse_properties(input, 1, &ts->prop);

 error = input_mt_init_slots(input, RPI_TS_MAX_SUPPORTED_POINTS,
        INPUT_MT_DIRECT);
 if (error) {
  dev_err(dev, "could not init mt slots, %d\n", error);
  return error;
 }

 error = input_register_polled_device(poll_dev);
 if (error) {
  dev_err(dev, "could not register input device, %d\n", error);
  return error;
 }

 return 0;
}
