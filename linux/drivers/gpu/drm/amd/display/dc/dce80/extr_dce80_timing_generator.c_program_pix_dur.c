
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_3__ {scalar_t__ dmif; } ;
struct TYPE_4__ {TYPE_1__ offsets; } ;


 TYPE_2__* DCE110TG_FROM_TG (struct timing_generator*) ;
 int DPG_PIPE_ARBITRATION_CONTROL1 ;
 int PIXEL_DURATION ;
 int div_u64 (unsigned long long,scalar_t__) ;
 scalar_t__ dm_read_reg (int ,scalar_t__) ;
 int dm_write_reg (int ,scalar_t__,scalar_t__) ;
 scalar_t__ mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1 ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void program_pix_dur(struct timing_generator *tg, uint32_t pix_clk_100hz)
{
 uint64_t pix_dur;
 uint32_t addr = mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1
     + DCE110TG_FROM_TG(tg)->offsets.dmif;
 uint32_t value = dm_read_reg(tg->ctx, addr);

 if (pix_clk_100hz == 0)
  return;

 pix_dur = div_u64(10000000000ull, pix_clk_100hz);

 set_reg_field_value(
  value,
  pix_dur,
  DPG_PIPE_ARBITRATION_CONTROL1,
  PIXEL_DURATION);

 dm_write_reg(tg->ctx, addr, value);
}
