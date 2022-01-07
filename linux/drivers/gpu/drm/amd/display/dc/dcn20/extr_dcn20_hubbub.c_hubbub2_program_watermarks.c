
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct hubbub {TYPE_8__* ctx; } ;
struct dcn_watermark_set {int dummy; } ;
struct TYPE_13__ {TYPE_4__* ctx; } ;
struct dcn20_hubbub {TYPE_5__ base; } ;
struct TYPE_16__ {TYPE_7__* dc; } ;
struct TYPE_14__ {int disable_stutter; } ;
struct TYPE_15__ {TYPE_6__ debug; } ;
struct TYPE_12__ {TYPE_3__* dc; } ;
struct TYPE_11__ {TYPE_2__* clk_mgr; } ;
struct TYPE_9__ {int prev_p_state_change_support; int p_state_change_support; } ;
struct TYPE_10__ {TYPE_1__ clks; } ;


 int DCHUBBUB_ARB_DF_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_MIN_REQ_OUTSTAND ;
 int DCHUBBUB_ARB_SAT_LEVEL ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int hubbub1_allow_self_refresh_control (struct hubbub*,int) ;
 int hubbub1_program_pstate_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub1_program_stutter_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;
 int hubbub1_program_urgent_watermarks (struct hubbub*,struct dcn_watermark_set*,unsigned int,int) ;

__attribute__((used)) static void hubbub2_program_watermarks(
  struct hubbub *hubbub,
  struct dcn_watermark_set *watermarks,
  unsigned int refclk_mhz,
  bool safe_to_lower)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);




 hubbub1_program_urgent_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);
 hubbub1_program_stutter_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);






 if (hubbub1->base.ctx->dc->clk_mgr->clks.prev_p_state_change_support == 1 &&
  hubbub1->base.ctx->dc->clk_mgr->clks.p_state_change_support == 0)
  safe_to_lower = 1;

 hubbub1_program_pstate_watermarks(hubbub, watermarks, refclk_mhz, safe_to_lower);

 REG_SET(DCHUBBUB_ARB_SAT_LEVEL, 0,
   DCHUBBUB_ARB_SAT_LEVEL, 60 * refclk_mhz);
 REG_UPDATE(DCHUBBUB_ARB_DF_REQ_OUTSTAND, DCHUBBUB_ARB_MIN_REQ_OUTSTAND, 180);

 hubbub1_allow_self_refresh_control(hubbub, !hubbub->ctx->dc->debug.disable_stutter);
}
