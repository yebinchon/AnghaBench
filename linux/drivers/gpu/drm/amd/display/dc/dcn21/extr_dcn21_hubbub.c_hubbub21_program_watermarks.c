
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hubbub {TYPE_3__* ctx; } ;
struct dcn_watermark_set {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {int disable_stutter; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;


 int DCHUBBUB_ARB_DF_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_HOSTVM_CNTL ;
 int DCHUBBUB_ARB_MAX_QOS_COMMIT_THRESHOLD ;
 int DCHUBBUB_ARB_MIN_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_MIN_REQ_OUTSTAND_COMMIT_THRESHOLD ;
 int DCHUBBUB_ARB_SAT_LEVEL ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int hubbub1_allow_self_refresh_control (struct hubbub*,int) ;
 int hubbub21_program_pstate_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub21_program_stutter_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub21_program_urgent_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;

void hubbub21_program_watermarks(
  struct hubbub *hubbub,
  struct dcn_watermark_set *watermarks,
  unsigned int refclk_mhz,
  bool safe_to_lower)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);

 hubbub21_program_urgent_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 hubbub21_program_stutter_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 hubbub21_program_pstate_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 REG_SET(DCHUBBUB_ARB_SAT_LEVEL, 0,
   DCHUBBUB_ARB_SAT_LEVEL, 60 * refclk_mhz);
 REG_UPDATE_2(DCHUBBUB_ARB_DF_REQ_OUTSTAND,
   DCHUBBUB_ARB_MIN_REQ_OUTSTAND, 0x1FF,
   DCHUBBUB_ARB_MIN_REQ_OUTSTAND_COMMIT_THRESHOLD, 0xA);
 REG_UPDATE(DCHUBBUB_ARB_HOSTVM_CNTL,
   DCHUBBUB_ARB_MAX_QOS_COMMIT_THRESHOLD, 0xF);

 hubbub1_allow_self_refresh_control(hubbub, !hubbub->ctx->dc->debug.disable_stutter);
}
