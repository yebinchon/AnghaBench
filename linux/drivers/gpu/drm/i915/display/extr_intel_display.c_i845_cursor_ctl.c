
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_plane_state {TYPE_1__* color_plane; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_2__ {int stride; } ;


 int CURSOR_ENABLE ;
 int CURSOR_FORMAT_ARGB ;
 int CURSOR_STRIDE (int ) ;

__attribute__((used)) static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
      const struct intel_plane_state *plane_state)
{
 return CURSOR_ENABLE |
  CURSOR_FORMAT_ARGB |
  CURSOR_STRIDE(plane_state->color_plane[0].stride);
}
