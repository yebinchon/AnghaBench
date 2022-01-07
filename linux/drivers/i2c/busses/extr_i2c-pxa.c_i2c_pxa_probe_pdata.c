
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int master_code; int rate; int high_mode; int fast_mode; int use_pio; } ;
struct platform_device_id {int driver_data; } ;
struct platform_device {int dev; } ;
struct i2c_pxa_platform_data {int master_code; int rate; int high_mode; int fast_mode; int use_pio; } ;
typedef enum pxa_i2c_types { ____Placeholder_pxa_i2c_types } pxa_i2c_types ;


 struct i2c_pxa_platform_data* dev_get_platdata (int *) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static int i2c_pxa_probe_pdata(struct platform_device *pdev,
          struct pxa_i2c *i2c,
          enum pxa_i2c_types *i2c_types)
{
 struct i2c_pxa_platform_data *plat = dev_get_platdata(&pdev->dev);
 const struct platform_device_id *id = platform_get_device_id(pdev);

 *i2c_types = id->driver_data;
 if (plat) {
  i2c->use_pio = plat->use_pio;
  i2c->fast_mode = plat->fast_mode;
  i2c->high_mode = plat->high_mode;
  i2c->master_code = plat->master_code;
  if (!i2c->master_code)
   i2c->master_code = 0xe;
  i2c->rate = plat->rate;
 }
 return 0;
}
