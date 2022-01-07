
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_mem_input {int dummy; } ;


 int DPG_PIPE_STUTTER_CONTROL ;
 int DPG_PIPE_STUTTER_CONTROL2 ;
 int DPG_WATERMARK_MASK_CONTROL ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 int STUTTER_EXIT_SELF_REFRESH_WATERMARK ;
 int STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK ;

__attribute__((used)) static void program_stutter_watermark(
 struct dce_mem_input *dce_mi,
 uint32_t wm_select,
 uint32_t stutter_mark)
{
 REG_UPDATE(DPG_WATERMARK_MASK_CONTROL,
  STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK, wm_select);

 if (REG(DPG_PIPE_STUTTER_CONTROL2))
  REG_UPDATE(DPG_PIPE_STUTTER_CONTROL2,
    STUTTER_EXIT_SELF_REFRESH_WATERMARK, stutter_mark);
 else
  REG_UPDATE(DPG_PIPE_STUTTER_CONTROL,
    STUTTER_EXIT_SELF_REFRESH_WATERMARK, stutter_mark);
}
