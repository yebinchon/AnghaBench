
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane {int dummy; } ;
struct intel_crtc_state {int dummy; } ;


 int i845_update_cursor (struct intel_plane*,struct intel_crtc_state const*,int *) ;

__attribute__((used)) static void i845_disable_cursor(struct intel_plane *plane,
    const struct intel_crtc_state *crtc_state)
{
 i845_update_cursor(plane, crtc_state, ((void*)0));
}
