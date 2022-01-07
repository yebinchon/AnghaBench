
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int GIO_BANK_SIZE ;
 int dev_err (struct device*,char*,int,int) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int brcmstb_gpio_sanity_check_banks(struct device *dev,
  struct device_node *np, struct resource *res)
{
 int res_num_banks = resource_size(res) / GIO_BANK_SIZE;
 int num_banks =
  of_property_count_u32_elems(np, "brcm,gpio-bank-widths");

 if (res_num_banks != num_banks) {
  dev_err(dev, "Mismatch in banks: res had %d, bank-widths had %d\n",
    res_num_banks, num_banks);
  return -EINVAL;
 } else {
  return 0;
 }
}
