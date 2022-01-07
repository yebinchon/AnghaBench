
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ddc {int dummy; } ;
struct dc_context {int dummy; } ;


 int read_byte_sw (struct dc_context*,struct ddc*,int ,int *,int) ;
 int write_byte_sw (struct dc_context*,struct ddc*,int ,int ) ;

__attribute__((used)) static bool i2c_read_sw(
 struct dc_context *ctx,
 struct ddc *ddc_handle,
 uint16_t clock_delay_div_4,
 uint8_t address,
 uint32_t length,
 uint8_t *data)
{
 uint32_t i = 0;

 if (!write_byte_sw(ctx, ddc_handle, clock_delay_div_4, address))
  return 0;

 while (i < length) {
  if (!read_byte_sw(ctx, ddc_handle, clock_delay_div_4, data + i,
   i < length - 1))
   return 0;
  ++i;
 }

 return 1;
}
