
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_ctx {unsigned int pipe_idx; TYPE_1__* plane_state; } ;
struct TYPE_2__ {scalar_t__ format; } ;


 scalar_t__ SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;

__attribute__((used)) static bool is_surface_pixel_format_supported(struct pipe_ctx *pipe_ctx, unsigned int underlay_idx)
{
 if (pipe_ctx->pipe_idx != underlay_idx)
  return 1;
 if (!pipe_ctx->plane_state)
  return 0;
 if (pipe_ctx->plane_state->format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  return 0;
 return 1;
}
