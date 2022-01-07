
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hubbub {TYPE_1__* ctx; } ;
struct dcn_watermark_set {int dummy; } ;
struct dcn10_hubbub {int dummy; } ;
struct TYPE_5__ {int disable_stutter; } ;
struct TYPE_6__ {TYPE_2__ debug; } ;
struct TYPE_4__ {TYPE_3__* dc; } ;


 int DCHUBBUB_ARB_DF_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_MIN_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_SAT_LEVEL ;
 int DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL ;
 int DCHUBBUB_ARB_WATERMARK_CHANGE_DONE_INTERRUPT_DISABLE ;
 int DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn10_hubbub* TO_DCN10_HUBBUB (struct hubbub*) ;
 int hubbub1_allow_self_refresh_control (struct hubbub*,int) ;
 int hubbub1_program_pstate_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub1_program_stutter_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub1_program_urgent_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;

void hubbub1_program_watermarks(
  struct hubbub *hubbub,
  struct dcn_watermark_set *watermarks,
  unsigned int refclk_mhz,
  bool safe_to_lower)
{
 struct dcn10_hubbub *hubbub1 = TO_DCN10_HUBBUB(hubbub);




 hubbub1_program_urgent_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 hubbub1_program_stutter_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 hubbub1_program_pstate_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);

 REG_UPDATE(DCHUBBUB_ARB_SAT_LEVEL,
   DCHUBBUB_ARB_SAT_LEVEL, 60 * refclk_mhz);
 REG_UPDATE(DCHUBBUB_ARB_DF_REQ_OUTSTAND,
   DCHUBBUB_ARB_MIN_REQ_OUTSTAND, 68);

 hubbub1_allow_self_refresh_control(hubbub, !hubbub->ctx->dc->debug.disable_stutter);






}
