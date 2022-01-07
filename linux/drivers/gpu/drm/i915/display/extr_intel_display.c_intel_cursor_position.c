
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int crtc_x; int crtc_y; } ;
struct intel_plane_state {TYPE_1__ base; } ;


 int CURSOR_POS_SIGN ;
 int CURSOR_X_SHIFT ;
 int CURSOR_Y_SHIFT ;

__attribute__((used)) static u32 intel_cursor_position(const struct intel_plane_state *plane_state)
{
 int x = plane_state->base.crtc_x;
 int y = plane_state->base.crtc_y;
 u32 pos = 0;

 if (x < 0) {
  pos |= CURSOR_POS_SIGN << CURSOR_X_SHIFT;
  x = -x;
 }
 pos |= x << CURSOR_X_SHIFT;

 if (y < 0) {
  pos |= CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
  y = -y;
 }
 pos |= y << CURSOR_Y_SHIFT;

 return pos;
}
