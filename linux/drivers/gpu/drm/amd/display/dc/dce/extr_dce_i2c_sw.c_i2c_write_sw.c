
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct ddc {int dummy; } ;
struct dc_context {int dummy; } ;


 int write_byte_sw (struct dc_context*,struct ddc*,int ,int const) ;

__attribute__((used)) static bool i2c_write_sw(
 struct dc_context *ctx,
 struct ddc *ddc_handle,
 uint16_t clock_delay_div_4,
 uint8_t address,
 uint32_t length,
 const uint8_t *data)
{
 uint32_t i = 0;

 if (!write_byte_sw(ctx, ddc_handle, clock_delay_div_4, address))
  return 0;

 while (i < length) {
  if (!write_byte_sw(ctx, ddc_handle, clock_delay_div_4, data[i]))
   return 0;
  ++i;
 }

 return 1;
}
