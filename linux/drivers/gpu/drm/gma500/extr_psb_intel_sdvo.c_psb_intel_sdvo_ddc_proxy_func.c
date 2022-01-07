
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct psb_intel_sdvo {TYPE_2__* i2c; } ;
struct i2c_adapter {struct psb_intel_sdvo* algo_data; } ;
struct TYPE_4__ {TYPE_1__* algo; } ;
struct TYPE_3__ {int (* functionality ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static u32 psb_intel_sdvo_ddc_proxy_func(struct i2c_adapter *adapter)
{
 struct psb_intel_sdvo *sdvo = adapter->algo_data;
 return sdvo->i2c->algo->functionality(sdvo->i2c);
}
