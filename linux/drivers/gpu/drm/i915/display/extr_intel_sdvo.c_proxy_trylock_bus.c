
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_sdvo {TYPE_2__* i2c; } ;
struct i2c_adapter {struct intel_sdvo* algo_data; } ;
struct TYPE_4__ {TYPE_1__* lock_ops; } ;
struct TYPE_3__ {int (* trylock_bus ) (TYPE_2__*,unsigned int) ;} ;


 int stub1 (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int proxy_trylock_bus(struct i2c_adapter *adapter,
        unsigned int flags)
{
 struct intel_sdvo *sdvo = adapter->algo_data;
 return sdvo->i2c->lock_ops->trylock_bus(sdvo->i2c, flags);
}
