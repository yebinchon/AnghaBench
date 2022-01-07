
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
struct TYPE_4__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct TYPE_3__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct _vcs_dpi_display_rq_regs_st {TYPE_2__ rq_regs_c; TYPE_1__ rq_regs_l; int crq_expansion_mode; int mrq_expansion_mode; int prq_expansion_mode; int drq_expansion_mode; int plane1_base_address; } ;


 int CHUNK_SIZE ;
 int CHUNK_SIZE_C ;
 int CRQ_EXPANSION_MODE ;
 int DCHUBP_REQ_SIZE_CONFIG ;
 int DCHUBP_REQ_SIZE_CONFIG_C ;
 int DCN_EXPANSION_MODE ;
 int DET_BUF_PLANE1_BASE_ADDRESS ;
 int DPTE_GROUP_SIZE ;
 int DPTE_GROUP_SIZE_C ;
 int DRQ_EXPANSION_MODE ;
 int HUBPRET_CONTROL ;
 int META_CHUNK_SIZE ;
 int META_CHUNK_SIZE_C ;
 int MIN_CHUNK_SIZE ;
 int MIN_CHUNK_SIZE_C ;
 int MIN_META_CHUNK_SIZE ;
 int MIN_META_CHUNK_SIZE_C ;
 int MPTE_GROUP_SIZE ;
 int MPTE_GROUP_SIZE_C ;
 int MRQ_EXPANSION_MODE ;
 int PRQ_EXPANSION_MODE ;
 int PTE_ROW_HEIGHT_LINEAR ;
 int PTE_ROW_HEIGHT_LINEAR_C ;
 int REG_SET_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_SET_8 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 int SWATH_HEIGHT ;
 int SWATH_HEIGHT_C ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_program_requestor(
  struct hubp *hubp,
  struct _vcs_dpi_display_rq_regs_st *rq_regs)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_UPDATE(HUBPRET_CONTROL,
   DET_BUF_PLANE1_BASE_ADDRESS, rq_regs->plane1_base_address);
 REG_SET_4(DCN_EXPANSION_MODE, 0,
   DRQ_EXPANSION_MODE, rq_regs->drq_expansion_mode,
   PRQ_EXPANSION_MODE, rq_regs->prq_expansion_mode,
   MRQ_EXPANSION_MODE, rq_regs->mrq_expansion_mode,
   CRQ_EXPANSION_MODE, rq_regs->crq_expansion_mode);
 REG_SET_8(DCHUBP_REQ_SIZE_CONFIG, 0,
  CHUNK_SIZE, rq_regs->rq_regs_l.chunk_size,
  MIN_CHUNK_SIZE, rq_regs->rq_regs_l.min_chunk_size,
  META_CHUNK_SIZE, rq_regs->rq_regs_l.meta_chunk_size,
  MIN_META_CHUNK_SIZE, rq_regs->rq_regs_l.min_meta_chunk_size,
  DPTE_GROUP_SIZE, rq_regs->rq_regs_l.dpte_group_size,
  MPTE_GROUP_SIZE, rq_regs->rq_regs_l.mpte_group_size,
  SWATH_HEIGHT, rq_regs->rq_regs_l.swath_height,
  PTE_ROW_HEIGHT_LINEAR, rq_regs->rq_regs_l.pte_row_height_linear);
 REG_SET_8(DCHUBP_REQ_SIZE_CONFIG_C, 0,
  CHUNK_SIZE_C, rq_regs->rq_regs_c.chunk_size,
  MIN_CHUNK_SIZE_C, rq_regs->rq_regs_c.min_chunk_size,
  META_CHUNK_SIZE_C, rq_regs->rq_regs_c.meta_chunk_size,
  MIN_META_CHUNK_SIZE_C, rq_regs->rq_regs_c.min_meta_chunk_size,
  DPTE_GROUP_SIZE_C, rq_regs->rq_regs_c.dpte_group_size,
  MPTE_GROUP_SIZE_C, rq_regs->rq_regs_c.mpte_group_size,
  SWATH_HEIGHT_C, rq_regs->rq_regs_c.swath_height,
  PTE_ROW_HEIGHT_LINEAR_C, rq_regs->rq_regs_c.pte_row_height_linear);
}
