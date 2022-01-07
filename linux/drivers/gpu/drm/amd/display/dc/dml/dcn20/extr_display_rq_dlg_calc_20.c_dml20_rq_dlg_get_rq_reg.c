
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
typedef int display_rq_regs_st ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ display_rq_params_st ;
struct TYPE_7__ {int src; } ;
typedef TYPE_2__ display_pipe_params_st ;


 int dml20_rq_dlg_get_rq_params (struct display_mode_lib*,TYPE_1__*,int ) ;
 int extract_rq_regs (struct display_mode_lib*,int *,TYPE_1__) ;
 int memset (int *,int ,int) ;
 int print__rq_regs_st (struct display_mode_lib*,int ) ;

void dml20_rq_dlg_get_rq_reg(struct display_mode_lib *mode_lib,
  display_rq_regs_st *rq_regs,
  const display_pipe_params_st pipe_param)
{
 display_rq_params_st rq_param = {0};

 memset(rq_regs, 0, sizeof(*rq_regs));
 dml20_rq_dlg_get_rq_params(mode_lib, &rq_param, pipe_param.src);
 extract_rq_regs(mode_lib, rq_regs, rq_param);

 print__rq_regs_st(mode_lib, *rq_regs);
}
