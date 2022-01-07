
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int subpixel_order; } ;
struct drm_connector {int interlace_allowed; TYPE_2__ display_info; scalar_t__ doublescan_allowed; int connector_type; } ;
struct TYPE_7__ {int get_hw_state; struct drm_connector base; } ;
struct intel_sdvo_connector {TYPE_3__ base; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_4__ base; } ;


 int SubPixelHorizontalRGB ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 int intel_connector_attach_encoder (TYPE_3__*,TYPE_4__*) ;
 int intel_sdvo_connector_funcs ;
 int intel_sdvo_connector_get_hw_state ;
 int intel_sdvo_connector_helper_funcs ;

__attribute__((used)) static int
intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
     struct intel_sdvo *encoder)
{
 struct drm_connector *drm_connector;
 int ret;

 drm_connector = &connector->base.base;
 ret = drm_connector_init(encoder->base.base.dev,
      drm_connector,
      &intel_sdvo_connector_funcs,
      connector->base.base.connector_type);
 if (ret < 0)
  return ret;

 drm_connector_helper_add(drm_connector,
     &intel_sdvo_connector_helper_funcs);

 connector->base.base.interlace_allowed = 1;
 connector->base.base.doublescan_allowed = 0;
 connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
 connector->base.get_hw_state = intel_sdvo_connector_get_hw_state;

 intel_connector_attach_encoder(&connector->base, &encoder->base);

 return 0;
}
