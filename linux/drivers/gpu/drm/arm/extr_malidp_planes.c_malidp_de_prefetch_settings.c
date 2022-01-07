
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_plane_state {int mmu_prefetch_pgsize; int mmu_prefetch_mode; } ;
struct malidp_plane {TYPE_1__* layer; } ;
struct TYPE_2__ {int mmu_ctrl_offset; } ;


 int malidp_get_pgsize_bitmap (struct malidp_plane*) ;
 int malidp_mmu_prefetch_select_mode (struct malidp_plane_state*,int *) ;

__attribute__((used)) static void malidp_de_prefetch_settings(struct malidp_plane *mp,
     struct malidp_plane_state *ms)
{
 if (!mp->layer->mmu_ctrl_offset)
  return;


 ms->mmu_prefetch_pgsize = malidp_get_pgsize_bitmap(mp);
 ms->mmu_prefetch_mode =
  malidp_mmu_prefetch_select_mode(ms, &ms->mmu_prefetch_pgsize);
}
