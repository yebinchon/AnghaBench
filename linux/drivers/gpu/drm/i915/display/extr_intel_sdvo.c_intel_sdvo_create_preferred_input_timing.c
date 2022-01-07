
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct intel_sdvo_preferred_input_timing_args {int scaled; scalar_t__ interlace; scalar_t__ height; scalar_t__ width; scalar_t__ clock; } ;
struct TYPE_3__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_4__ {TYPE_1__ panel; } ;
struct intel_sdvo_connector {TYPE_2__ base; } ;
struct intel_sdvo {int dummy; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
typedef int args ;


 scalar_t__ IS_LVDS (struct intel_sdvo_connector*) ;
 int SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,struct intel_sdvo_preferred_input_timing_args*,int) ;
 int memset (struct intel_sdvo_preferred_input_timing_args*,int ,int) ;

__attribute__((used)) static bool
intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
      struct intel_sdvo_connector *intel_sdvo_connector,
      u16 clock,
      u16 width,
      u16 height)
{
 struct intel_sdvo_preferred_input_timing_args args;

 memset(&args, 0, sizeof(args));
 args.clock = clock;
 args.width = width;
 args.height = height;
 args.interlace = 0;

 if (IS_LVDS(intel_sdvo_connector)) {
  const struct drm_display_mode *fixed_mode =
   intel_sdvo_connector->base.panel.fixed_mode;

  if (fixed_mode->hdisplay != width ||
      fixed_mode->vdisplay != height)
   args.scaled = 1;
 }

 return intel_sdvo_set_value(intel_sdvo,
        SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING,
        &args, sizeof(args));
}
