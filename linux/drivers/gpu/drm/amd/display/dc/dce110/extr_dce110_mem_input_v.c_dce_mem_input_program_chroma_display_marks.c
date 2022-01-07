
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mem_input {int ctx; } ;
struct dce_watermarks {int dummy; } ;


 int program_nbp_watermark_c (int ,struct dce_watermarks) ;
 int program_stutter_watermark_c (int ,struct dce_watermarks) ;
 int program_urgency_watermark_c (int ,struct dce_watermarks,int ) ;

void dce_mem_input_program_chroma_display_marks(
 struct mem_input *mem_input,
 struct dce_watermarks nbp,
 struct dce_watermarks stutter,
 struct dce_watermarks urgent,
 uint32_t total_dest_line_time_ns)
{
 program_urgency_watermark_c(
  mem_input->ctx,
  urgent,
  total_dest_line_time_ns);

 program_nbp_watermark_c(
  mem_input->ctx,
  nbp);

 program_stutter_watermark_c(
  mem_input->ctx,
  stutter);
}
