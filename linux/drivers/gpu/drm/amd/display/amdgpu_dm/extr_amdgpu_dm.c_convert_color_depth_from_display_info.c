
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct drm_connector_state {int max_requested_bpc; } ;
struct TYPE_2__ {int bpc; } ;
struct drm_connector {struct drm_connector_state* state; TYPE_1__ display_info; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;


 int COLOR_DEPTH_101010 ;
 int COLOR_DEPTH_121212 ;
 int COLOR_DEPTH_141414 ;
 int COLOR_DEPTH_161616 ;
 int COLOR_DEPTH_666 ;
 int COLOR_DEPTH_888 ;
 int COLOR_DEPTH_UNDEFINED ;
 int min (int,int ) ;

__attribute__((used)) static enum dc_color_depth
convert_color_depth_from_display_info(const struct drm_connector *connector,
          const struct drm_connector_state *state)
{
 uint8_t bpc = (uint8_t)connector->display_info.bpc;


 bpc = bpc ? bpc : 8;

 if (!state)
  state = connector->state;

 if (state) {
  bpc = min(bpc, state->max_requested_bpc);


  bpc = bpc - (bpc & 1);
 }

 switch (bpc) {
 case 0:





  return COLOR_DEPTH_888;
 case 6:
  return COLOR_DEPTH_666;
 case 8:
  return COLOR_DEPTH_888;
 case 10:
  return COLOR_DEPTH_101010;
 case 12:
  return COLOR_DEPTH_121212;
 case 14:
  return COLOR_DEPTH_141414;
 case 16:
  return COLOR_DEPTH_161616;
 default:
  return COLOR_DEPTH_UNDEFINED;
 }
}
