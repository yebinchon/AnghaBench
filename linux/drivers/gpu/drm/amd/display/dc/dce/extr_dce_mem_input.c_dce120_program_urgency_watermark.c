
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_mem_input {int dummy; } ;


 int DPG_PIPE_URGENCY_CONTROL ;
 int DPG_PIPE_URGENT_LEVEL_CONTROL ;
 int DPG_WATERMARK_MASK_CONTROL ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 int URGENCY_HIGH_WATERMARK ;
 int URGENCY_LOW_WATERMARK ;
 int URGENCY_WATERMARK_MASK ;
 int URGENT_LEVEL_HIGH_WATERMARK ;
 int URGENT_LEVEL_LOW_WATERMARK ;

__attribute__((used)) static void dce120_program_urgency_watermark(
 struct dce_mem_input *dce_mi,
 uint32_t wm_select,
 uint32_t urgency_low_wm,
 uint32_t urgency_high_wm)
{
 REG_UPDATE(DPG_WATERMARK_MASK_CONTROL,
  URGENCY_WATERMARK_MASK, wm_select);

 REG_SET_2(DPG_PIPE_URGENCY_CONTROL, 0,
  URGENCY_LOW_WATERMARK, urgency_low_wm,
  URGENCY_HIGH_WATERMARK, urgency_high_wm);

 REG_SET_2(DPG_PIPE_URGENT_LEVEL_CONTROL, 0,
  URGENT_LEVEL_LOW_WATERMARK, urgency_low_wm,
  URGENT_LEVEL_HIGH_WATERMARK, urgency_high_wm);

}
