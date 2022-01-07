
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct _vcs_dpi_display_ttu_regs_st {int dummy; } ;
struct _vcs_dpi_display_rq_regs_st {int dummy; } ;
struct _vcs_dpi_display_pipe_dest_params_st {int dummy; } ;
struct _vcs_dpi_display_dlg_regs_st {int dummy; } ;


 int hubp21_program_deadline (struct hubp*,struct _vcs_dpi_display_dlg_regs_st*,struct _vcs_dpi_display_ttu_regs_st*) ;
 int hubp21_program_requestor (struct hubp*,struct _vcs_dpi_display_rq_regs_st*) ;
 int hubp2_vready_at_or_After_vsync (struct hubp*,struct _vcs_dpi_display_pipe_dest_params_st*) ;

__attribute__((used)) static void hubp21_setup(
  struct hubp *hubp,
  struct _vcs_dpi_display_dlg_regs_st *dlg_attr,
  struct _vcs_dpi_display_ttu_regs_st *ttu_attr,
  struct _vcs_dpi_display_rq_regs_st *rq_regs,
  struct _vcs_dpi_display_pipe_dest_params_st *pipe_dest)
{




 hubp2_vready_at_or_After_vsync(hubp, pipe_dest);
 hubp21_program_requestor(hubp, rq_regs);
 hubp21_program_deadline(hubp, dlg_attr, ttu_attr);

}
