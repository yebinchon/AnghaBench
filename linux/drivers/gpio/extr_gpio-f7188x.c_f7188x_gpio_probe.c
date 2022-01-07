
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct f7188x_sio {int type; } ;
struct f7188x_gpio_data {int nr_bank; struct f7188x_gpio_bank* bank; struct f7188x_sio* sio; } ;
struct TYPE_2__ {int * parent; } ;
struct f7188x_gpio_bank {TYPE_1__ chip; struct f7188x_gpio_data* data; } ;


 void* ARRAY_SIZE (void*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int,int) ;
 struct f7188x_sio* dev_get_platdata (int *) ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct f7188x_gpio_bank*) ;
 struct f7188x_gpio_data* devm_kzalloc (int *,int,int ) ;

 void* f71869_gpio_bank ;

 void* f71869a_gpio_bank ;
 void* f71882_gpio_bank ;

 void* f71889_gpio_bank ;

 void* f71889a_gpio_bank ;


 void* f81804_gpio_bank ;

 void* f81866_gpio_bank ;
 int platform_set_drvdata (struct platform_device*,struct f7188x_gpio_data*) ;

__attribute__((used)) static int f7188x_gpio_probe(struct platform_device *pdev)
{
 int err;
 int i;
 struct f7188x_sio *sio = dev_get_platdata(&pdev->dev);
 struct f7188x_gpio_data *data;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 switch (sio->type) {
 case 134:
  data->nr_bank = ARRAY_SIZE(f71869_gpio_bank);
  data->bank = f71869_gpio_bank;
  break;
 case 133:
  data->nr_bank = ARRAY_SIZE(f71869a_gpio_bank);
  data->bank = f71869a_gpio_bank;
  break;
 case 132:
  data->nr_bank = ARRAY_SIZE(f71882_gpio_bank);
  data->bank = f71882_gpio_bank;
  break;
 case 131:
  data->nr_bank = ARRAY_SIZE(f71889a_gpio_bank);
  data->bank = f71889a_gpio_bank;
  break;
 case 130:
  data->nr_bank = ARRAY_SIZE(f71889_gpio_bank);
  data->bank = f71889_gpio_bank;
  break;
 case 128:
  data->nr_bank = ARRAY_SIZE(f81866_gpio_bank);
  data->bank = f81866_gpio_bank;
  break;
 case 129:
  data->nr_bank = ARRAY_SIZE(f81804_gpio_bank);
  data->bank = f81804_gpio_bank;
  break;
 default:
  return -ENODEV;
 }
 data->sio = sio;

 platform_set_drvdata(pdev, data);


 for (i = 0; i < data->nr_bank; i++) {
  struct f7188x_gpio_bank *bank = &data->bank[i];

  bank->chip.parent = &pdev->dev;
  bank->data = data;

  err = devm_gpiochip_add_data(&pdev->dev, &bank->chip, bank);
  if (err) {
   dev_err(&pdev->dev,
    "Failed to register gpiochip %d: %d\n",
    i, err);
   return err;
  }
 }

 return 0;
}
