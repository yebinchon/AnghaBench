
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* ctx; } ;
struct dcn_dccg {TYPE_4__ base; } ;
struct dccg {int dummy; } ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_6__ {TYPE_1__* res_pool; } ;
struct TYPE_5__ {int pipe_count; } ;


 int ASSERT (int) ;
 int DPPCLK_DTO_CTRL ;
 int * DPPCLK_DTO_DB_EN ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn_dccg* TO_DCN_DCCG (struct dccg*) ;

void dccg2_init(struct dccg *dccg)
{
 struct dcn_dccg *dccg_dcn = TO_DCN_DCCG(dccg);


 switch (dccg_dcn->base.ctx->dc->res_pool->pipe_count) {
 case 6:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[5], 1);

 case 5:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[4], 1);

 case 4:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[3], 1);

 case 3:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[2], 1);

 case 2:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[1], 1);

 case 1:
  REG_UPDATE(DPPCLK_DTO_CTRL, DPPCLK_DTO_DB_EN[0], 1);
  break;
 default:
  ASSERT(0);
  break;
 }
}
