
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_watermarks {int dummy; } ;
struct dc_context {int dummy; } ;


 int mmDPGV0_PIPE_URGENCY_CONTROL ;
 int mmDPGV0_WATERMARK_MASK_CONTROL ;
 int program_urgency_watermark (struct dc_context const*,int ,int ,struct dce_watermarks,int ) ;

__attribute__((used)) static void program_urgency_watermark_l(
 const struct dc_context *ctx,
 struct dce_watermarks marks_low,
 uint32_t total_dest_line_time_ns)
{
 program_urgency_watermark(
  ctx,
  mmDPGV0_PIPE_URGENCY_CONTROL,
  mmDPGV0_WATERMARK_MASK_CONTROL,
  marks_low,
  total_dest_line_time_ns);
}
