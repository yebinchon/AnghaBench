
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_gpio {int dev; } ;
struct acpi_device {int dummy; } ;


 int GFP_KERNEL ;
 struct acpi_device* acpi_dev_get_first_match_dev (char*,int *,int) ;
 int acpi_dev_name (struct acpi_device*) ;
 int acpi_dev_put (struct acpi_device*) ;
 char* devm_kstrdup (int ,int ,int ) ;

__attribute__((used)) static const char *mrfld_gpio_get_pinctrl_dev_name(struct mrfld_gpio *priv)
{
 struct acpi_device *adev;
 const char *name;

 adev = acpi_dev_get_first_match_dev("INTC1002", ((void*)0), -1);
 if (adev) {
  name = devm_kstrdup(priv->dev, acpi_dev_name(adev), GFP_KERNEL);
  acpi_dev_put(adev);
 } else {
  name = "pinctrl-merrifield";
 }

 return name;
}
