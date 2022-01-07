
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct malidp_plane_state {struct drm_plane_state base; int mmu_prefetch_pgsize; int mmu_prefetch_mode; int n_planes; int format; int rotmem_size; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct malidp_plane_state* kmalloc (int,int ) ;
 struct malidp_plane_state* to_malidp_plane_state (int ) ;

__attribute__((used)) static struct
drm_plane_state *malidp_duplicate_plane_state(struct drm_plane *plane)
{
 struct malidp_plane_state *state, *m_state;

 if (!plane->state)
  return ((void*)0);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 m_state = to_malidp_plane_state(plane->state);
 __drm_atomic_helper_plane_duplicate_state(plane, &state->base);
 state->rotmem_size = m_state->rotmem_size;
 state->format = m_state->format;
 state->n_planes = m_state->n_planes;

 state->mmu_prefetch_mode = m_state->mmu_prefetch_mode;
 state->mmu_prefetch_pgsize = m_state->mmu_prefetch_pgsize;

 return &state->base;
}
