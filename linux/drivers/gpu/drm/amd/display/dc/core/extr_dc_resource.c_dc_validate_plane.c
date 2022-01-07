
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_plane_state {int dummy; } ;
struct dc {int caps; TYPE_2__* res_pool; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* validate_plane ) (struct dc_plane_state const*,int *) ;} ;


 int DC_OK ;
 int stub1 (struct dc_plane_state const*,int *) ;

enum dc_status dc_validate_plane(struct dc *dc, const struct dc_plane_state *plane_state)
{
 enum dc_status res = DC_OK;


 if (dc->res_pool->funcs->validate_plane)
  return dc->res_pool->funcs->validate_plane(plane_state, &dc->caps);

 return res;
}
