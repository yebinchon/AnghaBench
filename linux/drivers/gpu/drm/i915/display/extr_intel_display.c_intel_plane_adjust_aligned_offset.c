
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rotation; int fb; } ;
struct intel_plane_state {TYPE_2__* color_plane; TYPE_1__ base; } ;
struct TYPE_4__ {int stride; } ;


 int intel_adjust_aligned_offset (int*,int*,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static u32 intel_plane_adjust_aligned_offset(int *x, int *y,
          const struct intel_plane_state *state,
          int color_plane,
          u32 old_offset, u32 new_offset)
{
 return intel_adjust_aligned_offset(x, y, state->base.fb, color_plane,
        state->base.rotation,
        state->color_plane[color_plane].stride,
        old_offset, new_offset);
}
