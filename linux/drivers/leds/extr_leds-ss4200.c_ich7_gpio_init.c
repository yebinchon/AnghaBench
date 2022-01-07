
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_3__ {int gpio_bit; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ GPIO_USE_SEL ;
 scalar_t__ GPI_INV ;
 scalar_t__ GPO_BLINK ;
 scalar_t__ GP_IO_SEL ;
 scalar_t__ GP_LVL ;
 int NAS_RECOVERY ;
 int dev_dbg (struct device*,char*,int) ;
 int inl (scalar_t__) ;
 scalar_t__ nas_gpio_io_base ;
 int nasgpio_gpio_lock ;
 TYPE_1__* nasgpio_leds ;
 int outl (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ich7_gpio_init(struct device *dev)
{
 int i;
 u32 config_data = 0;
 u32 all_nas_led = 0;

 for (i = 0; i < ARRAY_SIZE(nasgpio_leds); i++)
  all_nas_led |= (1<<nasgpio_leds[i].gpio_bit);

 spin_lock(&nasgpio_gpio_lock);






 config_data = inl(nas_gpio_io_base + GPIO_USE_SEL);
 dev_dbg(dev, ": Data read from GPIO_USE_SEL = 0x%08x\n", config_data);
 config_data |= all_nas_led + NAS_RECOVERY;
 outl(config_data, nas_gpio_io_base + GPIO_USE_SEL);
 config_data = inl(nas_gpio_io_base + GPIO_USE_SEL);
 dev_dbg(dev, ": GPIO_USE_SEL = 0x%08x\n\n", config_data);







 config_data = inl(nas_gpio_io_base + GP_IO_SEL);
 dev_dbg(dev, ": Data read from GP_IO_SEL = 0x%08x\n",
     config_data);
 config_data &= ~all_nas_led;
 config_data |= NAS_RECOVERY;
 outl(config_data, nas_gpio_io_base + GP_IO_SEL);
 config_data = inl(nas_gpio_io_base + GP_IO_SEL);
 dev_dbg(dev, ": GP_IO_SEL = 0x%08x\n", config_data);





 config_data = inl(nas_gpio_io_base + GP_LVL);
 dev_dbg(dev, ": Data read from GP_LVL = 0x%08x\n", config_data);




 config_data = inl(nas_gpio_io_base + GPO_BLINK);
 dev_dbg(dev, ": Data read from GPO_BLINK = 0x%08x\n", config_data);




 config_data = inl(nas_gpio_io_base + GPI_INV);
 dev_dbg(dev, ": Data read from GPI_INV = 0x%08x\n", config_data);

 spin_unlock(&nasgpio_gpio_lock);
 return 0;
}
