
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int ASIC_GPIO_OE ;
 int ASIC_GPIO_OUT ;
 int EXPROM_WRITE_ENABLE ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int exprom_wp_disabled ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static int exprom_wp_set(struct hfi1_devdata *dd, bool disable)
{
 u64 gpio_val = 0;

 if (disable) {
  gpio_val = EXPROM_WRITE_ENABLE;
  exprom_wp_disabled = 1;
  dd_dev_info(dd, "Disable Expansion ROM Write Protection\n");
 } else {
  exprom_wp_disabled = 0;
  dd_dev_info(dd, "Enable Expansion ROM Write Protection\n");
 }

 write_csr(dd, ASIC_GPIO_OUT, gpio_val);
 write_csr(dd, ASIC_GPIO_OE, gpio_val);

 return 0;
}
