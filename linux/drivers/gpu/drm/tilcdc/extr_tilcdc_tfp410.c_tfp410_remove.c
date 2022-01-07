
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_module {int dummy; } ;
struct tfp410_module {int gpio; int i2c; } ;
struct platform_device {int dev; } ;


 struct tilcdc_module* dev_get_platdata (int *) ;
 int gpio_free (int ) ;
 int i2c_put_adapter (int ) ;
 int tilcdc_module_cleanup (struct tilcdc_module*) ;
 struct tfp410_module* to_tfp410_module (struct tilcdc_module*) ;

__attribute__((used)) static int tfp410_remove(struct platform_device *pdev)
{
 struct tilcdc_module *mod = dev_get_platdata(&pdev->dev);
 struct tfp410_module *tfp410_mod = to_tfp410_module(mod);

 i2c_put_adapter(tfp410_mod->i2c);
 gpio_free(tfp410_mod->gpio);

 tilcdc_module_cleanup(mod);

 return 0;
}
