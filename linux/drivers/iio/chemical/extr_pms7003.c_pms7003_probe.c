
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {int dev; } ;
struct pms7003_state {int frame_ready; int lock; struct serdev_device* serdev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int available_scan_masks; int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int CMD_ENTER_PASSIVE_MODE ;
 int CMD_WAKEUP ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int PMS7003_DRIVER_NAME ;
 int SERDEV_PARITY_NONE ;
 int dev_err (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct pms7003_state*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int ,int *) ;
 int devm_serdev_device_open (int *,struct serdev_device*) ;
 struct pms7003_state* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int pms7003_channels ;
 int pms7003_do_cmd (struct pms7003_state*,int ) ;
 int pms7003_info ;
 int pms7003_scan_masks ;
 int pms7003_serdev_ops ;
 int pms7003_stop ;
 int pms7003_trigger_handler ;
 int serdev_device_set_baudrate (struct serdev_device*,int) ;
 int serdev_device_set_client_ops (struct serdev_device*,int *) ;
 int serdev_device_set_drvdata (struct serdev_device*,struct iio_dev*) ;
 int serdev_device_set_flow_control (struct serdev_device*,int) ;
 int serdev_device_set_parity (struct serdev_device*,int ) ;

__attribute__((used)) static int pms7003_probe(struct serdev_device *serdev)
{
 struct pms7003_state *state;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&serdev->dev, sizeof(*state));
 if (!indio_dev)
  return -ENOMEM;

 state = iio_priv(indio_dev);
 serdev_device_set_drvdata(serdev, indio_dev);
 state->serdev = serdev;
 indio_dev->dev.parent = &serdev->dev;
 indio_dev->info = &pms7003_info;
 indio_dev->name = PMS7003_DRIVER_NAME;
 indio_dev->channels = pms7003_channels,
 indio_dev->num_channels = ARRAY_SIZE(pms7003_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->available_scan_masks = pms7003_scan_masks;

 mutex_init(&state->lock);
 init_completion(&state->frame_ready);

 serdev_device_set_client_ops(serdev, &pms7003_serdev_ops);
 ret = devm_serdev_device_open(&serdev->dev, serdev);
 if (ret)
  return ret;

 serdev_device_set_baudrate(serdev, 9600);
 serdev_device_set_flow_control(serdev, 0);

 ret = serdev_device_set_parity(serdev, SERDEV_PARITY_NONE);
 if (ret)
  return ret;

 ret = pms7003_do_cmd(state, CMD_WAKEUP);
 if (ret) {
  dev_err(&serdev->dev, "failed to wakeup sensor\n");
  return ret;
 }

 ret = pms7003_do_cmd(state, CMD_ENTER_PASSIVE_MODE);
 if (ret) {
  dev_err(&serdev->dev, "failed to enter passive mode\n");
  return ret;
 }

 ret = devm_add_action_or_reset(&serdev->dev, pms7003_stop, state);
 if (ret)
  return ret;

 ret = devm_iio_triggered_buffer_setup(&serdev->dev, indio_dev, ((void*)0),
           pms7003_trigger_handler, ((void*)0));
 if (ret)
  return ret;

 return devm_iio_device_register(&serdev->dev, indio_dev);
}
