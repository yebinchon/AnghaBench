
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int dummy; } ;
struct dc {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_FAIL_SURFACE_VALIDATE ;
 int DC_OK ;
 int dce112_validate_surface_sets (struct dc_state*) ;

enum dc_status dce112_validate_global(
  struct dc *dc,
  struct dc_state *context)
{
 if (!dce112_validate_surface_sets(context))
  return DC_FAIL_SURFACE_VALIDATE;

 return DC_OK;
}
