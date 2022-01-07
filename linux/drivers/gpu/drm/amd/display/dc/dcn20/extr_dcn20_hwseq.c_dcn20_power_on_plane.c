
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* hubp; TYPE_2__* dpp; } ;
struct pipe_ctx {TYPE_3__ plane_res; } ;
struct dce_hwseq {TYPE_1__* ctx; } ;
struct TYPE_8__ {int inst; } ;
struct TYPE_6__ {int inst; } ;
struct TYPE_5__ {int logger; } ;


 int DC_IP_REQUEST_CNTL ;
 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_DEBUG (char*,int ) ;
 int IP_REQUEST_EN ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int dcn20_dpp_pg_control (struct dce_hwseq*,int ,int) ;
 int dcn20_hubp_pg_control (struct dce_hwseq*,int ,int) ;

__attribute__((used)) static void dcn20_power_on_plane(
 struct dce_hwseq *hws,
 struct pipe_ctx *pipe_ctx)
{
 DC_LOGGER_INIT(hws->ctx->logger);
 if (REG(DC_IP_REQUEST_CNTL)) {
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 1);
  dcn20_dpp_pg_control(hws, pipe_ctx->plane_res.dpp->inst, 1);
  dcn20_hubp_pg_control(hws, pipe_ctx->plane_res.hubp->inst, 1);
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 0);
  DC_LOG_DEBUG(
    "Un-gated front end for pipe %d\n", pipe_ctx->plane_res.hubp->inst);
 }
}
