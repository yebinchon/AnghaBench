
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct arizona_haptics {TYPE_2__* input_dev; int work; struct arizona* arizona; } ;
struct TYPE_8__ {int hap_act; } ;
struct arizona {int dev; TYPE_1__ pdata; int regmap; } ;
struct TYPE_9__ {char* name; int ffbit; int close; } ;


 int ARIZONA_HAPTICS_CONTROL_1 ;
 int ARIZONA_HAP_ACT ;
 int ENOMEM ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __set_bit (int ,int ) ;
 int arizona_haptics_close ;
 int arizona_haptics_play ;
 int arizona_haptics_work ;
 int dev_err (int ,char*,...) ;
 struct arizona* dev_get_drvdata (int ) ;
 TYPE_2__* devm_input_allocate_device (TYPE_5__*) ;
 struct arizona_haptics* devm_kzalloc (TYPE_5__*,int,int ) ;
 int input_ff_create_memless (TYPE_2__*,int *,int ) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_drvdata (TYPE_2__*,struct arizona_haptics*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int arizona_haptics_probe(struct platform_device *pdev)
{
 struct arizona *arizona = dev_get_drvdata(pdev->dev.parent);
 struct arizona_haptics *haptics;
 int ret;

 haptics = devm_kzalloc(&pdev->dev, sizeof(*haptics), GFP_KERNEL);
 if (!haptics)
  return -ENOMEM;

 haptics->arizona = arizona;

 ret = regmap_update_bits(arizona->regmap, ARIZONA_HAPTICS_CONTROL_1,
     ARIZONA_HAP_ACT, arizona->pdata.hap_act);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to set haptics actuator: %d\n",
   ret);
  return ret;
 }

 INIT_WORK(&haptics->work, arizona_haptics_work);

 haptics->input_dev = devm_input_allocate_device(&pdev->dev);
 if (!haptics->input_dev) {
  dev_err(arizona->dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 input_set_drvdata(haptics->input_dev, haptics);

 haptics->input_dev->name = "arizona:haptics";
 haptics->input_dev->close = arizona_haptics_close;
 __set_bit(FF_RUMBLE, haptics->input_dev->ffbit);

 ret = input_ff_create_memless(haptics->input_dev, ((void*)0),
          arizona_haptics_play);
 if (ret < 0) {
  dev_err(arizona->dev, "input_ff_create_memless() failed: %d\n",
   ret);
  return ret;
 }

 ret = input_register_device(haptics->input_dev);
 if (ret < 0) {
  dev_err(arizona->dev, "couldn't register input device: %d\n",
   ret);
  return ret;
 }

 return 0;
}
