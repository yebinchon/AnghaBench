
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ddc {int dummy; } ;
struct dc_context {int dummy; } ;


 int SCL ;
 int SDA ;
 scalar_t__ read_bit_from_ddc (struct ddc*,int ) ;
 int udelay (int ) ;
 int wait_for_scl_high_sw (struct dc_context*,struct ddc*,int ) ;
 int write_bit_to_ddc (struct ddc*,int ,int) ;

__attribute__((used)) static bool stop_sync_sw(
 struct dc_context *ctx,
 struct ddc *ddc_handle,
 uint16_t clock_delay_div_4)
{
 uint32_t retry = 0;





 write_bit_to_ddc(ddc_handle, SCL, 0);

 udelay(clock_delay_div_4);

 write_bit_to_ddc(ddc_handle, SDA, 0);

 udelay(clock_delay_div_4);

 write_bit_to_ddc(ddc_handle, SCL, 1);

 if (!wait_for_scl_high_sw(ctx, ddc_handle, clock_delay_div_4))
  return 0;

 write_bit_to_ddc(ddc_handle, SDA, 1);

 do {
  udelay(clock_delay_div_4);

  if (read_bit_from_ddc(ddc_handle, SDA))
   return 1;

  ++retry;
 } while (retry <= 2);

 return 0;
}
