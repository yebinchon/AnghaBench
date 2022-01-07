
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_i2c_chan {int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct mga_i2c_chan*) ;

void mgag200_i2c_destroy(struct mga_i2c_chan *i2c)
{
 if (!i2c)
  return;
 i2c_del_adapter(&i2c->adapter);
 kfree(i2c);
}
