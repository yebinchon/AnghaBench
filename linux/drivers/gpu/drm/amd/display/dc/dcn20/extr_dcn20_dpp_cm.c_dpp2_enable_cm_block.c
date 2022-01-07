
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dpp {TYPE_3__* ctx; } ;
struct dcn20_dpp {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {scalar_t__ cm_in_bypass; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;


 int CM_BYPASS ;
 int CM_CONTROL ;
 int REG_UPDATE (int ,int ,unsigned int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp2_enable_cm_block(
  struct dpp *dpp_base)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 unsigned int cm_bypass_mode = 0;

 if (dpp_base->ctx->dc->debug.cm_in_bypass)
  cm_bypass_mode = 1;

 REG_UPDATE(CM_CONTROL, CM_BYPASS, cm_bypass_mode);
}
