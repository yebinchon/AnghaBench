
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii902x {int reset_gpio; } ;


 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sii902x_reset(struct sii902x *sii902x)
{
 if (!sii902x->reset_gpio)
  return;

 gpiod_set_value(sii902x->reset_gpio, 1);


 usleep_range(150, 200);

 gpiod_set_value(sii902x->reset_gpio, 0);
}
