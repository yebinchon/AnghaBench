
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dpu_rm_requirements {int dummy; } ;
struct dpu_rm_hw_iter {struct dpu_rm_hw_blk* blk; } ;
struct dpu_rm_hw_blk {scalar_t__ id; int hw; } ;
struct dpu_rm {int dummy; } ;
struct dpu_lm_cfg {scalar_t__ id; scalar_t__ pingpong; int lm_pair_mask; } ;
struct TYPE_2__ {struct dpu_lm_cfg* cap; } ;


 int DPU_DEBUG (char*,scalar_t__,...) ;
 int DPU_ERROR (char*,scalar_t__) ;
 int DPU_HW_BLK_PINGPONG ;
 scalar_t__ RESERVED_BY_OTHER (struct dpu_rm_hw_blk*,int ) ;
 scalar_t__ _dpu_rm_get_hw_locked (struct dpu_rm*,struct dpu_rm_hw_iter*) ;
 int dpu_rm_init_hw_iter (struct dpu_rm_hw_iter*,int ,int ) ;
 int test_bit (scalar_t__,int *) ;
 TYPE_1__* to_dpu_hw_mixer (int ) ;

__attribute__((used)) static bool _dpu_rm_check_lm_and_get_connected_blks(
  struct dpu_rm *rm,
  uint32_t enc_id,
  struct dpu_rm_requirements *reqs,
  struct dpu_rm_hw_blk *lm,
  struct dpu_rm_hw_blk **pp,
  struct dpu_rm_hw_blk *primary_lm)
{
 const struct dpu_lm_cfg *lm_cfg = to_dpu_hw_mixer(lm->hw)->cap;
 struct dpu_rm_hw_iter iter;

 *pp = ((void*)0);

 DPU_DEBUG("check lm %d pp %d\n",
      lm_cfg->id, lm_cfg->pingpong);


 if (primary_lm) {
  const struct dpu_lm_cfg *prim_lm_cfg =
    to_dpu_hw_mixer(primary_lm->hw)->cap;

  if (!test_bit(lm_cfg->id, &prim_lm_cfg->lm_pair_mask)) {
   DPU_DEBUG("lm %d not peer of lm %d\n", lm_cfg->id,
     prim_lm_cfg->id);
   return 0;
  }
 }


 if (RESERVED_BY_OTHER(lm, enc_id)) {
  DPU_DEBUG("lm %d already reserved\n", lm_cfg->id);
  return 0;
 }

 dpu_rm_init_hw_iter(&iter, 0, DPU_HW_BLK_PINGPONG);
 while (_dpu_rm_get_hw_locked(rm, &iter)) {
  if (iter.blk->id == lm_cfg->pingpong) {
   *pp = iter.blk;
   break;
  }
 }

 if (!*pp) {
  DPU_ERROR("failed to get pp on lm %d\n", lm_cfg->pingpong);
  return 0;
 }

 if (RESERVED_BY_OTHER(*pp, enc_id)) {
  DPU_DEBUG("lm %d pp %d already reserved\n", lm->id,
    (*pp)->id);
  return 0;
 }

 return 1;
}
