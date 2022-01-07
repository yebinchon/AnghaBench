
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct _vcs_dpi_display_ttu_regs_st {int dummy; } ;
struct _vcs_dpi_display_rq_regs_st {int dummy; } ;
struct _vcs_dpi_display_pipe_dest_params_st {int dummy; } ;
struct _vcs_dpi_display_dlg_regs_st {int dummy; } ;


 int hubp1_program_deadline (struct hubp*,struct _vcs_dpi_display_dlg_regs_st*,struct _vcs_dpi_display_ttu_regs_st*) ;
 int hubp1_program_requestor (struct hubp*,struct _vcs_dpi_display_rq_regs_st*) ;
 int hubp1_vready_workaround (struct hubp*,struct _vcs_dpi_display_pipe_dest_params_st*) ;

__attribute__((used)) static void hubp1_setup(
  struct hubp *hubp,
  struct _vcs_dpi_display_dlg_regs_st *dlg_attr,
  struct _vcs_dpi_display_ttu_regs_st *ttu_attr,
  struct _vcs_dpi_display_rq_regs_st *rq_regs,
  struct _vcs_dpi_display_pipe_dest_params_st *pipe_dest)
{



 hubp1_program_requestor(hubp, rq_regs);
 hubp1_program_deadline(hubp, dlg_attr, ttu_attr);
 hubp1_vready_workaround(hubp, pipe_dest);
}
