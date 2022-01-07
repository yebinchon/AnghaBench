
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiomux {int gpios; int ngpios; } ;


 int BITS_PER_TYPE (unsigned int) ;
 int DECLARE_BITMAP (unsigned int*,int ) ;
 int gpiod_set_array_value_cansleep (int ,int ,int *,unsigned int*) ;
 unsigned int* values ;

__attribute__((used)) static void i2c_mux_gpio_set(const struct gpiomux *mux, unsigned val)
{
 DECLARE_BITMAP(values, BITS_PER_TYPE(val));

 values[0] = val;

 gpiod_set_array_value_cansleep(mux->ngpios, mux->gpios, ((void*)0), values);
}
