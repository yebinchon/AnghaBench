
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int dot_crawl; int luma_filter; int chroma_filter; int flicker_filter_adaptive; int flicker_filter_2d; int flicker_filter; int sharpness; int vpos; int hpos; int overscan_v; int overscan_h; } ;
struct TYPE_5__ {int brightness; int hue; int contrast; int saturation; } ;
struct drm_connector_state {TYPE_2__ tv; int connector; } ;
struct TYPE_4__ {struct drm_connector_state base; } ;
struct intel_sdvo_connector_state {TYPE_3__ tv; TYPE_1__ base; } ;
struct intel_sdvo_connector {scalar_t__ dot_crawl; scalar_t__ tv_luma_filter; scalar_t__ tv_chroma_filter; scalar_t__ flicker_filter_adaptive; scalar_t__ flicker_filter_2d; scalar_t__ flicker_filter; scalar_t__ sharpness; scalar_t__ brightness; scalar_t__ hue; scalar_t__ contrast; scalar_t__ saturation; scalar_t__ vpos; scalar_t__ hpos; scalar_t__ top; scalar_t__ left; } ;
struct intel_sdvo {int dummy; } ;


 int BRIGHTNESS ;
 int CONTRAST ;
 int DOT_CRAWL ;
 int FLICKER_FILTER ;
 int FLICKER_FILTER_2D ;
 int FLICKER_FILTER_ADAPTIVE ;
 int HPOS ;
 int HUE ;
 int OVERSCAN_H ;
 int OVERSCAN_V ;
 int SATURATION ;
 int SHARPNESS ;
 int TV_CHROMA_FILTER ;
 int TV_LUMA_FILTER ;
 int UPDATE_PROPERTY (int ,int ) ;
 int VPOS ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (int ) ;

__attribute__((used)) static void intel_sdvo_update_props(struct intel_sdvo *intel_sdvo,
        const struct intel_sdvo_connector_state *sdvo_state)
{
 const struct drm_connector_state *conn_state = &sdvo_state->base.base;
 struct intel_sdvo_connector *intel_sdvo_conn =
  to_intel_sdvo_connector(conn_state->connector);
 u16 val;

 if (intel_sdvo_conn->left)
  UPDATE_PROPERTY(sdvo_state->tv.overscan_h, OVERSCAN_H);

 if (intel_sdvo_conn->top)
  UPDATE_PROPERTY(sdvo_state->tv.overscan_v, OVERSCAN_V);

 if (intel_sdvo_conn->hpos)
  UPDATE_PROPERTY(sdvo_state->tv.hpos, HPOS);

 if (intel_sdvo_conn->vpos)
  UPDATE_PROPERTY(sdvo_state->tv.vpos, VPOS);

 if (intel_sdvo_conn->saturation)
  UPDATE_PROPERTY(conn_state->tv.saturation, SATURATION);

 if (intel_sdvo_conn->contrast)
  UPDATE_PROPERTY(conn_state->tv.contrast, CONTRAST);

 if (intel_sdvo_conn->hue)
  UPDATE_PROPERTY(conn_state->tv.hue, HUE);

 if (intel_sdvo_conn->brightness)
  UPDATE_PROPERTY(conn_state->tv.brightness, BRIGHTNESS);

 if (intel_sdvo_conn->sharpness)
  UPDATE_PROPERTY(sdvo_state->tv.sharpness, SHARPNESS);

 if (intel_sdvo_conn->flicker_filter)
  UPDATE_PROPERTY(sdvo_state->tv.flicker_filter, FLICKER_FILTER);

 if (intel_sdvo_conn->flicker_filter_2d)
  UPDATE_PROPERTY(sdvo_state->tv.flicker_filter_2d, FLICKER_FILTER_2D);

 if (intel_sdvo_conn->flicker_filter_adaptive)
  UPDATE_PROPERTY(sdvo_state->tv.flicker_filter_adaptive, FLICKER_FILTER_ADAPTIVE);

 if (intel_sdvo_conn->tv_chroma_filter)
  UPDATE_PROPERTY(sdvo_state->tv.chroma_filter, TV_CHROMA_FILTER);

 if (intel_sdvo_conn->tv_luma_filter)
  UPDATE_PROPERTY(sdvo_state->tv.luma_filter, TV_LUMA_FILTER);

 if (intel_sdvo_conn->dot_crawl)
  UPDATE_PROPERTY(sdvo_state->tv.dot_crawl, DOT_CRAWL);


}
