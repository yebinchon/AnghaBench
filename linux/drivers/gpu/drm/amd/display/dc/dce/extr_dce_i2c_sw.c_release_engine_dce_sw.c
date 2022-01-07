
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct dce_i2c_sw {int * ddc; } ;


 int dal_ddc_close (int *) ;

__attribute__((used)) static void release_engine_dce_sw(
 struct resource_pool *pool,
 struct dce_i2c_sw *dce_i2c_sw)
{
 dal_ddc_close(dce_i2c_sw->ddc);
 dce_i2c_sw->ddc = ((void*)0);
}
