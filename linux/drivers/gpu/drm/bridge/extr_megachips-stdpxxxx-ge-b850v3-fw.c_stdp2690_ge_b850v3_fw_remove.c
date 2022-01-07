
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ge_b850v3_lvds_remove () ;

__attribute__((used)) static int stdp2690_ge_b850v3_fw_remove(struct i2c_client *stdp2690_i2c)
{
 ge_b850v3_lvds_remove();

 return 0;
}
