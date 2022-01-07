
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_i2c_chan {int adapter; int has_aux; } ;


 int WARN_ON (int ) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct amdgpu_i2c_chan*) ;

void amdgpu_i2c_destroy(struct amdgpu_i2c_chan *i2c)
{
 if (!i2c)
  return;
 WARN_ON(i2c->has_aux);
 i2c_del_adapter(&i2c->adapter);
 kfree(i2c);
}
