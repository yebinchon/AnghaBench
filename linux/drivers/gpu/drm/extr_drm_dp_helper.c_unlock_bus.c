
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int hw_mutex; } ;


 TYPE_1__* i2c_to_aux (struct i2c_adapter*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_bus(struct i2c_adapter *i2c, unsigned int flags)
{
 mutex_unlock(&i2c_to_aux(i2c)->hw_mutex);
}
