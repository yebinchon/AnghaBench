
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dce_hwseq {TYPE_3__* ctx; } ;
struct TYPE_6__ {TYPE_2__* dc; int logger; } ;
struct TYPE_4__ {int (* hubp_pg_control ) (struct dce_hwseq*,int,int) ;int (* dpp_pg_control ) (struct dce_hwseq*,int,int) ;} ;
struct TYPE_5__ {TYPE_1__ hwss; } ;


 int DC_IP_REQUEST_CNTL ;
 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_DEBUG (char*,int) ;
 int IP_REQUEST_EN ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int stub1 (struct dce_hwseq*,int,int) ;
 int stub2 (struct dce_hwseq*,int,int) ;

__attribute__((used)) static void power_on_plane(
 struct dce_hwseq *hws,
 int plane_id)
{
 DC_LOGGER_INIT(hws->ctx->logger);
 if (REG(DC_IP_REQUEST_CNTL)) {
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 1);
  hws->ctx->dc->hwss.dpp_pg_control(hws, plane_id, 1);
  hws->ctx->dc->hwss.hubp_pg_control(hws, plane_id, 1);
  REG_SET(DC_IP_REQUEST_CNTL, 0,
    IP_REQUEST_EN, 0);
  DC_LOG_DEBUG(
    "Un-gated front end for pipe %d\n", plane_id);
 }
}
