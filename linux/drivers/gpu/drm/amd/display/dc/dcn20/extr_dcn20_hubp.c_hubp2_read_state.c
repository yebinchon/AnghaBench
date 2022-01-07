
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hubp {int dummy; } ;
struct TYPE_4__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct TYPE_3__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct _vcs_dpi_display_rq_regs_st {TYPE_2__ rq_regs_c; TYPE_1__ rq_regs_l; } ;
struct dcn_hubp_state {struct _vcs_dpi_display_rq_regs_st rq_regs; } ;
struct dcn20_hubp {struct dcn_hubp_state state; } ;


 int CHUNK_SIZE ;
 int CHUNK_SIZE_C ;
 int DCHUBP_REQ_SIZE_CONFIG ;
 int DCHUBP_REQ_SIZE_CONFIG_C ;
 int DPTE_GROUP_SIZE ;
 int DPTE_GROUP_SIZE_C ;
 int META_CHUNK_SIZE ;
 int META_CHUNK_SIZE_C ;
 int MIN_CHUNK_SIZE ;
 int MIN_CHUNK_SIZE_C ;
 int MIN_META_CHUNK_SIZE ;
 int MIN_META_CHUNK_SIZE_C ;
 int MPTE_GROUP_SIZE ;
 int MPTE_GROUP_SIZE_C ;
 int PTE_ROW_HEIGHT_LINEAR ;
 int PTE_ROW_HEIGHT_LINEAR_C ;
 int REG_GET_8 (int ,int ,int *,int ,int *,int ,int *,int ,int *,int ,int *,int ,int *,int ,int *,int ,int *) ;
 int SWATH_HEIGHT ;
 int SWATH_HEIGHT_C ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;
 int hubp2_read_state_common (struct hubp*) ;

void hubp2_read_state(struct hubp *hubp)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);
 struct dcn_hubp_state *s = &hubp2->state;
 struct _vcs_dpi_display_rq_regs_st *rq_regs = &s->rq_regs;

 hubp2_read_state_common(hubp);

 REG_GET_8(DCHUBP_REQ_SIZE_CONFIG,
  CHUNK_SIZE, &rq_regs->rq_regs_l.chunk_size,
  MIN_CHUNK_SIZE, &rq_regs->rq_regs_l.min_chunk_size,
  META_CHUNK_SIZE, &rq_regs->rq_regs_l.meta_chunk_size,
  MIN_META_CHUNK_SIZE, &rq_regs->rq_regs_l.min_meta_chunk_size,
  DPTE_GROUP_SIZE, &rq_regs->rq_regs_l.dpte_group_size,
  MPTE_GROUP_SIZE, &rq_regs->rq_regs_l.mpte_group_size,
  SWATH_HEIGHT, &rq_regs->rq_regs_l.swath_height,
  PTE_ROW_HEIGHT_LINEAR, &rq_regs->rq_regs_l.pte_row_height_linear);

 REG_GET_8(DCHUBP_REQ_SIZE_CONFIG_C,
  CHUNK_SIZE_C, &rq_regs->rq_regs_c.chunk_size,
  MIN_CHUNK_SIZE_C, &rq_regs->rq_regs_c.min_chunk_size,
  META_CHUNK_SIZE_C, &rq_regs->rq_regs_c.meta_chunk_size,
  MIN_META_CHUNK_SIZE_C, &rq_regs->rq_regs_c.min_meta_chunk_size,
  DPTE_GROUP_SIZE_C, &rq_regs->rq_regs_c.dpte_group_size,
  MPTE_GROUP_SIZE_C, &rq_regs->rq_regs_c.mpte_group_size,
  SWATH_HEIGHT_C, &rq_regs->rq_regs_c.swath_height,
  PTE_ROW_HEIGHT_LINEAR_C, &rq_regs->rq_regs_c.pte_row_height_linear);

}
