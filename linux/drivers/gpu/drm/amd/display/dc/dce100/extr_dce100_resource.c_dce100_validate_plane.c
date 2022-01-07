
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_plane_state {scalar_t__ format; } ;
struct dc_caps {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_FAIL_SURFACE_VALIDATE ;
 int DC_OK ;
 scalar_t__ SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;

enum dc_status dce100_validate_plane(const struct dc_plane_state *plane_state, struct dc_caps *caps)
{

 if (plane_state->format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  return DC_OK;

 return DC_FAIL_SURFACE_VALIDATE;
}
