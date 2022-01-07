
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int WARN_ONCE (int,char*) ;

__attribute__((used)) static int trylock_bus(struct i2c_adapter *i2c, unsigned int flags)
{
 WARN_ONCE(1, "This operation not supposed to run in atomic context!");
 return 0;
}
