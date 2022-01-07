
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pm8xxx_vib {unsigned int reg_vib_drv; struct input_dev* vib_input_dev; struct pm8xxx_regs const* regs; int regmap; int work; } ;
struct pm8xxx_regs {unsigned int drv_en_manual_mask; int drv_addr; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int version; } ;
struct input_dev {char* name; int close; TYPE_1__ id; } ;


 int ENODEV ;
 int ENOMEM ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_get_regmap (int ,int *) ;
 struct input_dev* devm_input_allocate_device (TYPE_2__*) ;
 struct pm8xxx_vib* devm_kzalloc (TYPE_2__*,int,int ) ;
 int input_ff_create_memless (struct input_dev*,int *,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct pm8xxx_vib*) ;
 struct pm8xxx_regs* of_device_get_match_data (TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct pm8xxx_vib*) ;
 int pm8xxx_vib_close ;
 int pm8xxx_vib_play_effect ;
 int pm8xxx_work_handler ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pm8xxx_vib_probe(struct platform_device *pdev)
{
 struct pm8xxx_vib *vib;
 struct input_dev *input_dev;
 int error;
 unsigned int val;
 const struct pm8xxx_regs *regs;

 vib = devm_kzalloc(&pdev->dev, sizeof(*vib), GFP_KERNEL);
 if (!vib)
  return -ENOMEM;

 vib->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!vib->regmap)
  return -ENODEV;

 input_dev = devm_input_allocate_device(&pdev->dev);
 if (!input_dev)
  return -ENOMEM;

 INIT_WORK(&vib->work, pm8xxx_work_handler);
 vib->vib_input_dev = input_dev;

 regs = of_device_get_match_data(&pdev->dev);


 error = regmap_read(vib->regmap, regs->drv_addr, &val);
 if (error < 0)
  return error;

 val &= regs->drv_en_manual_mask;
 error = regmap_write(vib->regmap, regs->drv_addr, val);
 if (error < 0)
  return error;

 vib->regs = regs;
 vib->reg_vib_drv = val;

 input_dev->name = "pm8xxx_vib_ffmemless";
 input_dev->id.version = 1;
 input_dev->close = pm8xxx_vib_close;
 input_set_drvdata(input_dev, vib);
 input_set_capability(vib->vib_input_dev, EV_FF, FF_RUMBLE);

 error = input_ff_create_memless(input_dev, ((void*)0),
     pm8xxx_vib_play_effect);
 if (error) {
  dev_err(&pdev->dev,
   "couldn't register vibrator as FF device\n");
  return error;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&pdev->dev, "couldn't register input device\n");
  return error;
 }

 platform_set_drvdata(pdev, vib);
 return 0;
}
