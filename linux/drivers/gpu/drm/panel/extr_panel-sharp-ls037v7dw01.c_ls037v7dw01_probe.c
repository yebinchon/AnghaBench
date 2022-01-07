
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * funcs; int * dev; } ;
struct ls037v7dw01_panel {TYPE_1__ panel; void* ud_gpio; void* lr_gpio; void* mo_gpio; void* resb_gpio; void* ini_gpio; void* vdd; struct platform_device* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 void* devm_gpiod_get_index (int *,char*,int,int ) ;
 struct ls037v7dw01_panel* devm_kzalloc (int *,int,int ) ;
 void* devm_regulator_get (int *,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int ls037v7dw01_funcs ;
 int platform_set_drvdata (struct platform_device*,struct ls037v7dw01_panel*) ;

__attribute__((used)) static int ls037v7dw01_probe(struct platform_device *pdev)
{
 struct ls037v7dw01_panel *lcd;

 lcd = devm_kzalloc(&pdev->dev, sizeof(*lcd), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 platform_set_drvdata(pdev, lcd);
 lcd->pdev = pdev;

 lcd->vdd = devm_regulator_get(&pdev->dev, "envdd");
 if (IS_ERR(lcd->vdd)) {
  dev_err(&pdev->dev, "failed to get regulator\n");
  return PTR_ERR(lcd->vdd);
 }

 lcd->ini_gpio = devm_gpiod_get(&pdev->dev, "enable", GPIOD_OUT_LOW);
 if (IS_ERR(lcd->ini_gpio)) {
  dev_err(&pdev->dev, "failed to get enable gpio\n");
  return PTR_ERR(lcd->ini_gpio);
 }

 lcd->resb_gpio = devm_gpiod_get(&pdev->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(lcd->resb_gpio)) {
  dev_err(&pdev->dev, "failed to get reset gpio\n");
  return PTR_ERR(lcd->resb_gpio);
 }

 lcd->mo_gpio = devm_gpiod_get_index(&pdev->dev, "mode", 0,
         GPIOD_OUT_LOW);
 if (IS_ERR(lcd->mo_gpio)) {
  dev_err(&pdev->dev, "failed to get mode[0] gpio\n");
  return PTR_ERR(lcd->mo_gpio);
 }

 lcd->lr_gpio = devm_gpiod_get_index(&pdev->dev, "mode", 1,
         GPIOD_OUT_LOW);
 if (IS_ERR(lcd->lr_gpio)) {
  dev_err(&pdev->dev, "failed to get mode[1] gpio\n");
  return PTR_ERR(lcd->lr_gpio);
 }

 lcd->ud_gpio = devm_gpiod_get_index(&pdev->dev, "mode", 2,
         GPIOD_OUT_LOW);
 if (IS_ERR(lcd->ud_gpio)) {
  dev_err(&pdev->dev, "failed to get mode[2] gpio\n");
  return PTR_ERR(lcd->ud_gpio);
 }

 drm_panel_init(&lcd->panel);
 lcd->panel.dev = &pdev->dev;
 lcd->panel.funcs = &ls037v7dw01_funcs;

 return drm_panel_add(&lcd->panel);
}
