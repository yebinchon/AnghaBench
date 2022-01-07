
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_button_info {int autorepeat; int wakeup; scalar_t__ name; int event_code; int event_type; int acpi_index; } ;
struct platform_device {int dev; } ;
struct gpio_keys_platform_data {int nbuttons; int rep; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button {int gpio; int active_low; int debounce_interval; int wakeup; scalar_t__ desc; int code; int type; } ;


 int ENODEV ;
 int ENOMEM ;
 struct platform_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR_OR_ZERO (struct platform_device*) ;
 int dev_err (int *,char*,int) ;
 int devm_kfree (int *,struct gpio_keys_platform_data*) ;
 struct gpio_keys_platform_data* devm_kzalloc (int *,int,int ) ;
 int gpio_is_valid (int) ;
 struct platform_device* platform_device_register_resndata (int *,char*,int ,int *,int ,struct gpio_keys_platform_data*,int) ;
 int soc_button_lookup_gpio (int *,int ) ;

__attribute__((used)) static struct platform_device *
soc_button_device_create(struct platform_device *pdev,
    const struct soc_button_info *button_info,
    bool autorepeat)
{
 const struct soc_button_info *info;
 struct platform_device *pd;
 struct gpio_keys_button *gpio_keys;
 struct gpio_keys_platform_data *gpio_keys_pdata;
 int n_buttons = 0;
 int gpio;
 int error;

 for (info = button_info; info->name; info++)
  if (info->autorepeat == autorepeat)
   n_buttons++;

 gpio_keys_pdata = devm_kzalloc(&pdev->dev,
           sizeof(*gpio_keys_pdata) +
     sizeof(*gpio_keys) * n_buttons,
           GFP_KERNEL);
 if (!gpio_keys_pdata)
  return ERR_PTR(-ENOMEM);

 gpio_keys = (void *)(gpio_keys_pdata + 1);
 n_buttons = 0;

 for (info = button_info; info->name; info++) {
  if (info->autorepeat != autorepeat)
   continue;

  gpio = soc_button_lookup_gpio(&pdev->dev, info->acpi_index);
  if (!gpio_is_valid(gpio)) {
   continue;
  }

  gpio_keys[n_buttons].type = info->event_type;
  gpio_keys[n_buttons].code = info->event_code;
  gpio_keys[n_buttons].gpio = gpio;
  gpio_keys[n_buttons].active_low = 1;
  gpio_keys[n_buttons].desc = info->name;
  gpio_keys[n_buttons].wakeup = info->wakeup;

  gpio_keys[n_buttons].debounce_interval = 50;
  n_buttons++;
 }

 if (n_buttons == 0) {
  error = -ENODEV;
  goto err_free_mem;
 }

 gpio_keys_pdata->buttons = gpio_keys;
 gpio_keys_pdata->nbuttons = n_buttons;
 gpio_keys_pdata->rep = autorepeat;

 pd = platform_device_register_resndata(&pdev->dev, "gpio-keys",
            PLATFORM_DEVID_AUTO, ((void*)0), 0,
            gpio_keys_pdata,
            sizeof(*gpio_keys_pdata));
 error = PTR_ERR_OR_ZERO(pd);
 if (error) {
  dev_err(&pdev->dev,
   "failed registering gpio-keys: %d\n", error);
  goto err_free_mem;
 }

 return pd;

err_free_mem:
 devm_kfree(&pdev->dev, gpio_keys_pdata);
 return ERR_PTR(error);
}
