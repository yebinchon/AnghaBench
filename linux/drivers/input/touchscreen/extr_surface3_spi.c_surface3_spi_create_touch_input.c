
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct surface3_ts_data {TYPE_2__* spi; struct input_dev* input_dev; } ;
struct TYPE_3__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {char* name; char* phys; TYPE_1__ id; } ;
struct TYPE_4__ {int dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int BUS_SPI ;
 int ENOMEM ;
 int INPUT_MT_DIRECT ;
 int dev_err (int *,char*,int) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_mt_init_slots (struct input_dev*,int,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static int surface3_spi_create_touch_input(struct surface3_ts_data *data)
{
 struct input_dev *input;
 int error;

 input = devm_input_allocate_device(&data->spi->dev);
 if (!input)
  return -ENOMEM;

 data->input_dev = input;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0, 9600, 0, 0);
 input_abs_set_res(input, ABS_MT_POSITION_X, 40);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, 7200, 0, 0);
 input_abs_set_res(input, ABS_MT_POSITION_Y, 48);
 input_set_abs_params(input, ABS_MT_WIDTH_MAJOR, 0, 1024, 0, 0);
 input_set_abs_params(input, ABS_MT_WIDTH_MINOR, 0, 1024, 0, 0);
 input_mt_init_slots(input, 10, INPUT_MT_DIRECT);

 input->name = "Surface3 SPI Capacitive TouchScreen";
 input->phys = "input/ts";
 input->id.bustype = BUS_SPI;
 input->id.vendor = 0x045e;
 input->id.product = 0x0001;
 input->id.version = 0x0000;

 error = input_register_device(input);
 if (error) {
  dev_err(&data->spi->dev,
   "Failed to register input device: %d", error);
  return error;
 }

 return 0;
}
