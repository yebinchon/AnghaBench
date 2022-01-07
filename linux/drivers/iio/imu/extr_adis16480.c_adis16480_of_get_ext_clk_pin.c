
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* spi; } ;
struct adis16480 {TYPE_2__ adis; } ;
typedef enum adis16480_int_pin { ____Placeholder_adis16480_int_pin } adis16480_int_pin ;
struct TYPE_3__ {int dev; } ;


 int ADIS16480_PIN_DIO2 ;
 int ARRAY_SIZE (int *) ;
 int * adis16480_int_pin_names ;
 int dev_info (int *,char*) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static int adis16480_of_get_ext_clk_pin(struct adis16480 *st,
     struct device_node *of_node)
{
 const char *ext_clk_pin;
 enum adis16480_int_pin pin;
 int i;

 pin = ADIS16480_PIN_DIO2;
 if (of_property_read_string(of_node, "adi,ext-clk-pin", &ext_clk_pin))
  goto clk_input_not_found;

 for (i = 0; i < ARRAY_SIZE(adis16480_int_pin_names); i++) {
  if (strcasecmp(ext_clk_pin, adis16480_int_pin_names[i]) == 0)
   return i;
 }

clk_input_not_found:
 dev_info(&st->adis.spi->dev,
  "clk input line not specified, using DIO2\n");
 return pin;
}
