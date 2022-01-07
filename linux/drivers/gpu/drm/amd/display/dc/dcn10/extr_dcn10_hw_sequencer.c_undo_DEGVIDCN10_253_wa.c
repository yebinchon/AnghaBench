
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hubp {TYPE_1__* funcs; } ;
struct TYPE_8__ {int DEGVIDCN10_253_applied; } ;
struct dce_hwseq {TYPE_4__ wa_state; } ;
struct TYPE_6__ {int (* hubp_pg_control ) (struct dce_hwseq*,int ,int) ;} ;
struct dc {TYPE_2__ hwss; TYPE_3__* res_pool; struct dce_hwseq* hwseq; } ;
struct TYPE_7__ {struct hubp** hubps; } ;
struct TYPE_5__ {int (* set_blank ) (struct hubp*,int) ;} ;


 int DC_IP_REQUEST_CNTL ;
 int IP_REQUEST_EN ;
 int REG_SET (int ,int ,int ,int) ;
 int stub1 (struct hubp*,int) ;
 int stub2 (struct dce_hwseq*,int ,int) ;

__attribute__((used)) static void undo_DEGVIDCN10_253_wa(struct dc *dc)
{
 struct dce_hwseq *hws = dc->hwseq;
 struct hubp *hubp = dc->res_pool->hubps[0];

 if (!hws->wa_state.DEGVIDCN10_253_applied)
  return;

 hubp->funcs->set_blank(hubp, 1);

 REG_SET(DC_IP_REQUEST_CNTL, 0,
   IP_REQUEST_EN, 1);

 dc->hwss.hubp_pg_control(hws, 0, 0);
 REG_SET(DC_IP_REQUEST_CNTL, 0,
   IP_REQUEST_EN, 0);

 hws->wa_state.DEGVIDCN10_253_applied = 0;
}
