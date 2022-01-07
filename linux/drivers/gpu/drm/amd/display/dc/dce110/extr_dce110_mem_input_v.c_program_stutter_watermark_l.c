
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_watermarks {int dummy; } ;
struct dc_context {int dummy; } ;


 int mmDPGV0_PIPE_STUTTER_CONTROL ;
 int mmDPGV0_WATERMARK_MASK_CONTROL ;
 int program_stutter_watermark (struct dc_context const*,int ,int ,struct dce_watermarks) ;

__attribute__((used)) static void program_stutter_watermark_l(
 const struct dc_context *ctx,
 struct dce_watermarks marks)
{
 program_stutter_watermark(ctx,
   mmDPGV0_PIPE_STUTTER_CONTROL,
   mmDPGV0_WATERMARK_MASK_CONTROL,
   marks);
}
