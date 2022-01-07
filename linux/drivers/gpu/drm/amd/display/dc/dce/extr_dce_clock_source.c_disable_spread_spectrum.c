
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct dce110_clk_src {TYPE_3__* bios; TYPE_1__ base; } ;
struct bp_spread_spectrum_parameters {int pll_id; int member_0; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* enable_spread_spectrum_on_ppll ) (TYPE_3__*,struct bp_spread_spectrum_parameters*,int) ;} ;


 int BP_RESULT_OK ;
 int stub1 (TYPE_3__*,struct bp_spread_spectrum_parameters*,int) ;

__attribute__((used)) static bool disable_spread_spectrum(struct dce110_clk_src *clk_src)
{
 enum bp_result result;
 struct bp_spread_spectrum_parameters bp_ss_params = {0};

 bp_ss_params.pll_id = clk_src->base.id;


 result = clk_src->bios->funcs->enable_spread_spectrum_on_ppll(
   clk_src->bios,
   &bp_ss_params,
   0);

 return result == BP_RESULT_OK;
}
