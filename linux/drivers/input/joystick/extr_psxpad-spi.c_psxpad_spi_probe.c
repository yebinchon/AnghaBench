
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; TYPE_2__* master; int mode; } ;
struct psxpad {int phys; struct spi_device* spi; struct input_polled_dev* pdev; } ;
struct input_polled_dev {int poll_interval; int poll_interval_min; int poll_interval_max; struct input_dev* input; int poll; int close; int open; struct psxpad* private; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct TYPE_4__ {int min_speed_hz; int max_speed_hz; } ;


 int ABS_RX ;
 int ABS_RY ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_A ;
 int BTN_B ;
 int BTN_DPAD_DOWN ;
 int BTN_DPAD_LEFT ;
 int BTN_DPAD_RIGHT ;
 int BTN_DPAD_UP ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 int BTN_TL ;
 int BTN_TL2 ;
 int BTN_TR ;
 int BTN_TR2 ;
 int BTN_X ;
 int BTN_Y ;
 int BUS_SPI ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int SPI_MODE_3 ;
 int dev_err (int *,char*,...) ;
 char* dev_name (int *) ;
 struct psxpad* devm_kzalloc (int *,int,int ) ;
 struct input_polled_dev* input_allocate_polled_device () ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int pm_runtime_enable (int *) ;
 int psxpad_set_motor_level (struct psxpad*,int ,int ) ;
 int psxpad_spi_init_ff (struct psxpad*) ;
 int psxpad_spi_poll ;
 int psxpad_spi_poll_close ;
 int psxpad_spi_poll_open ;
 int snprintf (int ,int,char*,char*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int psxpad_spi_probe(struct spi_device *spi)
{
 struct psxpad *pad;
 struct input_polled_dev *pdev;
 struct input_dev *idev;
 int err;

 pad = devm_kzalloc(&spi->dev, sizeof(struct psxpad), GFP_KERNEL);
 if (!pad)
  return -ENOMEM;

 pdev = input_allocate_polled_device();
 if (!pdev) {
  dev_err(&spi->dev, "failed to allocate input device\n");
  return -ENOMEM;
 }


 pad->pdev = pdev;
 pad->spi = spi;

 pdev->private = pad;
 pdev->open = psxpad_spi_poll_open;
 pdev->close = psxpad_spi_poll_close;
 pdev->poll = psxpad_spi_poll;

 pdev->poll_interval = 16;
 pdev->poll_interval_min = 8;
 pdev->poll_interval_max = 32;


 idev = pdev->input;
 idev->name = "PlayStation 1/2 joypad";
 snprintf(pad->phys, sizeof(pad->phys), "%s/input", dev_name(&spi->dev));
 idev->id.bustype = BUS_SPI;


 input_set_abs_params(idev, ABS_X, 0, 255, 0, 0);
 input_set_abs_params(idev, ABS_Y, 0, 255, 0, 0);
 input_set_abs_params(idev, ABS_RX, 0, 255, 0, 0);
 input_set_abs_params(idev, ABS_RY, 0, 255, 0, 0);
 input_set_capability(idev, EV_KEY, BTN_DPAD_UP);
 input_set_capability(idev, EV_KEY, BTN_DPAD_DOWN);
 input_set_capability(idev, EV_KEY, BTN_DPAD_LEFT);
 input_set_capability(idev, EV_KEY, BTN_DPAD_RIGHT);
 input_set_capability(idev, EV_KEY, BTN_A);
 input_set_capability(idev, EV_KEY, BTN_B);
 input_set_capability(idev, EV_KEY, BTN_X);
 input_set_capability(idev, EV_KEY, BTN_Y);
 input_set_capability(idev, EV_KEY, BTN_TL);
 input_set_capability(idev, EV_KEY, BTN_TR);
 input_set_capability(idev, EV_KEY, BTN_TL2);
 input_set_capability(idev, EV_KEY, BTN_TR2);
 input_set_capability(idev, EV_KEY, BTN_THUMBL);
 input_set_capability(idev, EV_KEY, BTN_THUMBR);
 input_set_capability(idev, EV_KEY, BTN_SELECT);
 input_set_capability(idev, EV_KEY, BTN_START);

 err = psxpad_spi_init_ff(pad);
 if (err)
  return err;


 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;

 spi->master->min_speed_hz = 125000;
 spi->master->max_speed_hz = 125000;
 spi_setup(spi);


 psxpad_set_motor_level(pad, 0, 0);


 err = input_register_polled_device(pdev);
 if (err) {
  dev_err(&spi->dev,
   "failed to register input poll device: %d\n", err);
  return err;
 }

 pm_runtime_enable(&spi->dev);

 return 0;
}
