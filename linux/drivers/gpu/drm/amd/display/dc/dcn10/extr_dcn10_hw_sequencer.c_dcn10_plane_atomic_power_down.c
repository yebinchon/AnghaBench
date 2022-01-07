
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hubp {int inst; } ;
struct dpp {TYPE_2__* funcs; int inst; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_4__ {int (* hubp_pg_control ) (struct dce_hwseq*,int ,int) ;int (* dpp_pg_control ) (struct dce_hwseq*,int ,int) ;} ;
struct dc {TYPE_1__ hwss; TYPE_3__* ctx; struct dce_hwseq* hwseq; } ;
struct TYPE_6__ {int logger; } ;
struct TYPE_5__ {int (* dpp_reset ) (struct dpp*) ;} ;


 int DC_IP_REQUEST_CNTL ;
 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_DEBUG (char*,int ) ;
 int IP_REQUEST_EN ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int stub1 (struct dce_hwseq*,int ,int) ;
 int stub2 (struct dce_hwseq*,int ,int) ;
 int stub3 (struct dpp*) ;

__attribute__((used)) static void dcn10_plane_atomic_power_down(struct dc *dc,
  struct dpp *dpp,
  struct hubp *hubp)
{
 struct dce_hwseq *hws = dc->hwseq;
 DC_LOGGER_INIT(dc->ctx->logger);

 if (REG(DC_IP_REQUEST_CNTL)) {
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 1);
  dc->hwss.dpp_pg_control(hws, dpp->inst, 0);
  dc->hwss.hubp_pg_control(hws, hubp->inst, 0);
  dpp->funcs->dpp_reset(dpp);
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 0);
  DC_LOG_DEBUG(
    "Power gated front end %d\n", hubp->inst);
 }
}
