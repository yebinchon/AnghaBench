
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;


 int dce_i2c_sw_engine_acquire_engine (struct dce_i2c_sw*,struct ddc*) ;
 int udelay (int) ;

bool dce_i2c_engine_acquire_sw(
 struct dce_i2c_sw *dce_i2c_sw,
 struct ddc *ddc_handle)
{
 uint32_t counter = 0;
 bool result;

 do {

  result = dce_i2c_sw_engine_acquire_engine(
    dce_i2c_sw, ddc_handle);

  if (result)
   break;



  udelay(10);

  ++counter;
 } while (counter < 2);

 return result;
}
