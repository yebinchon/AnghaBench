
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gw_pld {int out; int client; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 struct gw_pld* gpiochip_get_data (struct gpio_chip*) ;
 int i2c_smbus_write_byte (int ,int ) ;

__attribute__((used)) static int gw_pld_input8(struct gpio_chip *gc, unsigned offset)
{
 struct gw_pld *gw = gpiochip_get_data(gc);

 gw->out |= BIT(offset);
 return i2c_smbus_write_byte(gw->client, gw->out);
}
