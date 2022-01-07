
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
struct _vcs_dpi_display_pipe_dest_params_st {scalar_t__ vstartup_start; scalar_t__ vready_offset; scalar_t__ vupdate_width; scalar_t__ vupdate_offset; scalar_t__ htotal; scalar_t__ vblank_end; } ;


 int DCHUBP_CNTL ;
 int HUBPREQ_DEBUG_DB ;
 int HUBP_VREADY_AT_OR_AFTER_VSYNC ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_vready_at_or_After_vsync(struct hubp *hubp,
  struct _vcs_dpi_display_pipe_dest_params_st *pipe_dest)
{
 uint32_t value = 0;
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_WRITE(HUBPREQ_DEBUG_DB, 1 << 8);







 if ((pipe_dest->vstartup_start - (pipe_dest->vready_offset+pipe_dest->vupdate_width
  + pipe_dest->vupdate_offset) / pipe_dest->htotal) <= pipe_dest->vblank_end) {
  value = 1;
 } else
  value = 0;
 REG_UPDATE(DCHUBP_CNTL, HUBP_VREADY_AT_OR_AFTER_VSYNC, value);
}
