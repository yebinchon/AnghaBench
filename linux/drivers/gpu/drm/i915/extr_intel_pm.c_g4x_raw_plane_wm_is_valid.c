
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct g4x_pipe_wm* raw; } ;
struct TYPE_4__ {TYPE_1__ g4x; } ;
struct intel_crtc_state {TYPE_2__ wm; } ;
struct g4x_pipe_wm {scalar_t__* plane; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 scalar_t__ g4x_plane_fifo_size (int,int) ;

__attribute__((used)) static bool g4x_raw_plane_wm_is_valid(const struct intel_crtc_state *crtc_state,
          enum plane_id plane_id, int level)
{
 const struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];

 return raw->plane[plane_id] <= g4x_plane_fifo_size(plane_id, level);
}
