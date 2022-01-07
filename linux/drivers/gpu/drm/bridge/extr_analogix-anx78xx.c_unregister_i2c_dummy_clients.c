
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * i2c_dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static void unregister_i2c_dummy_clients(struct anx78xx *anx78xx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(anx78xx->i2c_dummy); i++)
  i2c_unregister_device(anx78xx->i2c_dummy[i]);
}
