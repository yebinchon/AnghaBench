
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {int width; int height; } ;
struct dc_plane_state {TYPE_2__ src_rect; TYPE_1__ dst_rect; } ;
struct dc_caps {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_FAIL_SURFACE_VALIDATE ;
 int DC_OK ;

enum dc_status dce110_validate_plane(const struct dc_plane_state *plane_state,
         struct dc_caps *caps)
{
 if (((plane_state->dst_rect.width * 2) < plane_state->src_rect.width) ||
     ((plane_state->dst_rect.height * 2) < plane_state->src_rect.height))
  return DC_FAIL_SURFACE_VALIDATE;

 return DC_OK;
}
