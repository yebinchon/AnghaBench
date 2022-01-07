
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_payloads {int payloads; } ;


 int dal_vector_destruct (int *) ;
 int kfree (struct i2c_payloads*) ;

__attribute__((used)) static void dal_ddc_i2c_payloads_destroy(struct i2c_payloads **p)
{
 if (!p || !*p)
  return;
 dal_vector_destruct(&(*p)->payloads);
 kfree(*p);
 *p = ((void*)0);

}
