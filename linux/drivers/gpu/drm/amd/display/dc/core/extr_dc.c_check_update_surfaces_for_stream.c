
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_surface_update {int dummy; } ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
struct dc_stream_update {scalar_t__ wb_update; scalar_t__ dpms_off; scalar_t__ abm_level; scalar_t__ out_transfer_func; TYPE_2__ dst; TYPE_1__ src; } ;
struct dc_stream_status {int plane_count; } ;
struct dc {int dummy; } ;
typedef enum surface_update_type { ____Placeholder_surface_update_type } surface_update_type ;


 int UPDATE_TYPE_FAST ;
 int UPDATE_TYPE_FULL ;
 int det_surface_update (struct dc*,struct dc_surface_update*) ;
 int elevate_update_type (int*,int) ;

__attribute__((used)) static enum surface_update_type check_update_surfaces_for_stream(
  struct dc *dc,
  struct dc_surface_update *updates,
  int surface_count,
  struct dc_stream_update *stream_update,
  const struct dc_stream_status *stream_status)
{
 int i;
 enum surface_update_type overall_type = UPDATE_TYPE_FAST;

 if (stream_status == ((void*)0) || stream_status->plane_count != surface_count)
  return UPDATE_TYPE_FULL;


 if (stream_update) {
  if ((stream_update->src.height != 0) &&
    (stream_update->src.width != 0))
   return UPDATE_TYPE_FULL;

  if ((stream_update->dst.height != 0) &&
    (stream_update->dst.width != 0))
   return UPDATE_TYPE_FULL;

  if (stream_update->out_transfer_func)
   return UPDATE_TYPE_FULL;

  if (stream_update->abm_level)
   return UPDATE_TYPE_FULL;

  if (stream_update->dpms_off)
   return UPDATE_TYPE_FULL;





 }

 for (i = 0 ; i < surface_count; i++) {
  enum surface_update_type type =
    det_surface_update(dc, &updates[i]);

  if (type == UPDATE_TYPE_FULL)
   return type;

  elevate_update_type(&overall_type, type);
 }

 return overall_type;
}
