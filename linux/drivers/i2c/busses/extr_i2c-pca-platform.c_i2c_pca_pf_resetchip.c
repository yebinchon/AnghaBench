
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pca_pf_data {int gpio; } ;


 int gpiod_set_value (int ,int) ;
 int ndelay (int) ;

__attribute__((used)) static void i2c_pca_pf_resetchip(void *pd)
{
 struct i2c_pca_pf_data *i2c = pd;

 gpiod_set_value(i2c->gpio, 1);
 ndelay(100);
 gpiod_set_value(i2c->gpio, 0);
}
