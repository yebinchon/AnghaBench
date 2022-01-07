
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct drm_display_mode {scalar_t__ clock; int htotal; } ;
struct dpu_encoder_virt {TYPE_2__* cur_master; } ;
struct TYPE_3__ {int get_line_count; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int DIV_ROUND_UP_ULL (unsigned long long,scalar_t__) ;
 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*,scalar_t__,int,int) ;
 int DPU_ERROR (char*) ;

__attribute__((used)) static u32 _dpu_encoder_calculate_linetime(struct dpu_encoder_virt *dpu_enc,
  struct drm_display_mode *mode)
{
 u64 pclk_rate;
 u32 pclk_period;
 u32 line_time;




 if (!dpu_enc->cur_master)
  return 0;

 if (!dpu_enc->cur_master->ops.get_line_count) {
  DPU_ERROR("get_line_count function not defined\n");
  return 0;
 }

 pclk_rate = mode->clock;
 if (pclk_rate == 0) {
  DPU_ERROR("pclk is 0, cannot calculate line time\n");
  return 0;
 }

 pclk_period = DIV_ROUND_UP_ULL(1000000000ull, pclk_rate);
 if (pclk_period == 0) {
  DPU_ERROR("pclk period is 0\n");
  return 0;
 }





 line_time = (pclk_period * mode->htotal) / 1000;
 if (line_time == 0) {
  DPU_ERROR("line time calculation is 0\n");
  return 0;
 }

 DPU_DEBUG_ENC(dpu_enc,
   "clk_rate=%lldkHz, clk_period=%d, linetime=%dns\n",
   pclk_rate, pclk_period, line_time);

 return line_time;
}
