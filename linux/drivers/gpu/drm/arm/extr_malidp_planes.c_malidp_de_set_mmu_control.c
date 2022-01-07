
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct malidp_plane_state {int mmu_prefetch_pgsize; int n_planes; int mmu_prefetch_mode; } ;
struct malidp_plane {TYPE_1__* layer; int hwdev; } ;
struct TYPE_2__ {scalar_t__ mmu_ctrl_offset; scalar_t__ base; } ;


 int MALIDP_MMU_PREFETCH_READAHEAD ;
 int malidp_calc_mmu_control_value (int ,int ,int ,int ) ;
 int malidp_hw_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void malidp_de_set_mmu_control(struct malidp_plane *mp,
          struct malidp_plane_state *ms)
{
 u32 mmu_ctrl;


 if (!mp->layer->mmu_ctrl_offset)
  return;

 mmu_ctrl = malidp_calc_mmu_control_value(ms->mmu_prefetch_mode,
       MALIDP_MMU_PREFETCH_READAHEAD,
       ms->n_planes,
       ms->mmu_prefetch_pgsize);

 malidp_hw_write(mp->hwdev, mmu_ctrl,
   mp->layer->base + mp->layer->mmu_ctrl_offset);
}
