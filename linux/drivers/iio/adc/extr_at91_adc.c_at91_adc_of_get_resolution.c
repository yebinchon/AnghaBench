
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct iio_dev {int dev; } ;
struct device_node {int dummy; } ;
struct at91_adc_state {int low_res; int res; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 struct iio_dev* iio_priv_to_dev (struct at91_adc_state*) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int of_property_count_strings (struct device_node*,char*) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,int *,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int at91_adc_of_get_resolution(struct at91_adc_state *st,
          struct platform_device *pdev)
{
 struct iio_dev *idev = iio_priv_to_dev(st);
 struct device_node *np = pdev->dev.of_node;
 int count, i, ret = 0;
 char *res_name, *s;
 u32 *resolutions;

 count = of_property_count_strings(np, "atmel,adc-res-names");
 if (count < 2) {
  dev_err(&idev->dev, "You must specified at least two resolution names for "
        "adc-res-names property in the DT\n");
  return count;
 }

 resolutions = kmalloc_array(count, sizeof(*resolutions), GFP_KERNEL);
 if (!resolutions)
  return -ENOMEM;

 if (of_property_read_u32_array(np, "atmel,adc-res", resolutions, count)) {
  dev_err(&idev->dev, "Missing adc-res property in the DT.\n");
  ret = -ENODEV;
  goto ret;
 }

 if (of_property_read_string(np, "atmel,adc-use-res", (const char **)&res_name))
  res_name = "highres";

 for (i = 0; i < count; i++) {
  if (of_property_read_string_index(np, "atmel,adc-res-names", i, (const char **)&s))
   continue;

  if (strcmp(res_name, s))
   continue;

  st->res = resolutions[i];
  if (!strcmp(res_name, "lowres"))
   st->low_res = 1;
  else
   st->low_res = 0;

  dev_info(&idev->dev, "Resolution used: %u bits\n", st->res);
  goto ret;
 }

 dev_err(&idev->dev, "There is no resolution for %s\n", res_name);

ret:
 kfree(resolutions);
 return ret;
}
