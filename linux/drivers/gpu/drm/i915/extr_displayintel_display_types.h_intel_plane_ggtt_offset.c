
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_plane_state {int vma; } ;


 int i915_ggtt_offset (int ) ;

__attribute__((used)) static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *state)
{
 return i915_ggtt_offset(state->vma);
}
