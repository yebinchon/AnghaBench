
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct dc_crtc_timing {int pix_clk_100hz; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int dce110_tg_program_timing (struct timing_generator*,struct dc_crtc_timing const*,int ,int ,int ,int ,int ,int) ;
 int program_pix_dur (struct timing_generator*,int ) ;

__attribute__((used)) static void program_timing(struct timing_generator *tg,
 const struct dc_crtc_timing *timing,
 int vready_offset,
 int vstartup_start,
 int vupdate_offset,
 int vupdate_width,
 const enum signal_type signal,
 bool use_vbios)
{
 if (!use_vbios)
  program_pix_dur(tg, timing->pix_clk_100hz);

 dce110_tg_program_timing(tg, timing, 0, 0, 0, 0, 0, use_vbios);
}
