
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint32_t ;
struct mem_input {int ctx; } ;


 int DPGV0_PIPE_ARBITRATION_CONTROL1 ;
 int DPGV1_PIPE_ARBITRATION_CONTROL1 ;
 int PIXEL_DURATION ;
 unsigned long long dm_read_reg (int ,unsigned long long) ;
 int dm_write_reg (int ,unsigned long long,unsigned long long) ;
 unsigned long long mmDPGV0_PIPE_ARBITRATION_CONTROL1 ;
 unsigned long long mmDPGV0_PIPE_ARBITRATION_CONTROL2 ;
 unsigned long long mmDPGV1_PIPE_ARBITRATION_CONTROL1 ;
 unsigned long long mmDPGV1_PIPE_ARBITRATION_CONTROL2 ;
 int set_reg_field_value (unsigned long long,unsigned long long,int ,int ) ;

void dce110_allocate_mem_input_v(
 struct mem_input *mi,
 uint32_t h_total,
 uint32_t v_total,
 uint32_t pix_clk_khz,
 uint32_t total_stream_num)
{
 uint32_t addr;
 uint32_t value;
 uint32_t pix_dur;
 if (pix_clk_khz != 0) {
  addr = mmDPGV0_PIPE_ARBITRATION_CONTROL1;
  value = dm_read_reg(mi->ctx, addr);
  pix_dur = 1000000000ULL / pix_clk_khz;
  set_reg_field_value(
   value,
   pix_dur,
   DPGV0_PIPE_ARBITRATION_CONTROL1,
   PIXEL_DURATION);
  dm_write_reg(mi->ctx, addr, value);

  addr = mmDPGV1_PIPE_ARBITRATION_CONTROL1;
  value = dm_read_reg(mi->ctx, addr);
  pix_dur = 1000000000ULL / pix_clk_khz;
  set_reg_field_value(
   value,
   pix_dur,
   DPGV1_PIPE_ARBITRATION_CONTROL1,
   PIXEL_DURATION);
  dm_write_reg(mi->ctx, addr, value);

  addr = mmDPGV0_PIPE_ARBITRATION_CONTROL2;
  value = 0x4000800;
  dm_write_reg(mi->ctx, addr, value);

  addr = mmDPGV1_PIPE_ARBITRATION_CONTROL2;
  value = 0x4000800;
  dm_write_reg(mi->ctx, addr, value);
 }

}
