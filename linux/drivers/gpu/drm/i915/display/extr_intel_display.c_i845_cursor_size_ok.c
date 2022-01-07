
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc_w; } ;
struct intel_plane_state {TYPE_1__ base; } ;


 scalar_t__ IS_ALIGNED (int,int) ;
 scalar_t__ intel_cursor_size_ok (struct intel_plane_state const*) ;

__attribute__((used)) static bool i845_cursor_size_ok(const struct intel_plane_state *plane_state)
{
 int width = plane_state->base.crtc_w;





 return intel_cursor_size_ok(plane_state) && IS_ALIGNED(width, 64);
}
