
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int possible_crtcs; } ;
struct intel_encoder {int crtc_mask; TYPE_5__ base; scalar_t__ cloneable; int port; int power_domain; int type; int get_hw_state; int disable; int enable; int pre_enable; int get_config; int compute_config; } ;
struct intel_tv {int type; struct intel_encoder base; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int base; struct drm_connector_state* state; } ;
struct intel_connector {int get_hw_state; int polled; struct drm_connector base; } ;
struct TYPE_7__ {int tv_bottom_margin_property; int tv_right_margin_property; int tv_top_margin_property; int tv_left_margin_property; int tv_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_i915_private {struct drm_device drm; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
struct TYPE_9__ {int mode; TYPE_2__ margins; } ;
struct drm_connector_state {TYPE_3__ tv; } ;
struct TYPE_10__ {int oversample; char* name; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_ENCODER_TVDAC ;
 int GFP_KERNEL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_TVOUT ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PORT_NONE ;
 int POWER_DOMAIN_PORT_OTHER ;
 int TVDAC_STATE_CHG_EN ;
 int TV_CTL ;
 int TV_DAC ;
 int TV_FUSE_STATE_DISABLED ;
 int TV_FUSE_STATE_MASK ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_init (struct drm_device*,TYPE_5__*,int *,int ,char*) ;
 int drm_mode_create_tv_properties (struct drm_device*,int,char const**) ;
 int drm_object_attach_property (int *,int ,int) ;
 int intel_bios_is_tv_present (struct drm_i915_private*) ;
 struct intel_connector* intel_connector_alloc () ;
 int intel_connector_attach_encoder (struct intel_connector*,struct intel_encoder*) ;
 int intel_connector_get_hw_state ;
 int intel_disable_tv ;
 int intel_enable_tv ;
 int intel_tv_compute_config ;
 int intel_tv_connector_funcs ;
 int intel_tv_connector_helper_funcs ;
 int intel_tv_enc_funcs ;
 int intel_tv_get_config ;
 int intel_tv_get_hw_state ;
 int intel_tv_pre_enable ;
 int kfree (struct intel_tv*) ;
 struct intel_tv* kzalloc (int,int ) ;
 TYPE_4__* tv_modes ;

void
intel_tv_init(struct drm_i915_private *dev_priv)
{
 struct drm_device *dev = &dev_priv->drm;
 struct drm_connector *connector;
 struct intel_tv *intel_tv;
 struct intel_encoder *intel_encoder;
 struct intel_connector *intel_connector;
 u32 tv_dac_on, tv_dac_off, save_tv_dac;
 const char *tv_format_names[ARRAY_SIZE(tv_modes)];
 int i, initial_mode = 0;
 struct drm_connector_state *state;

 if ((I915_READ(TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
  return;

 if (!intel_bios_is_tv_present(dev_priv)) {
  DRM_DEBUG_KMS("Integrated TV is not present.\n");
  return;
 }





 save_tv_dac = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
 tv_dac_on = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
 tv_dac_off = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac);






 if ((tv_dac_on & TVDAC_STATE_CHG_EN) == 0 ||
     (tv_dac_off & TVDAC_STATE_CHG_EN) != 0)
  return;

 intel_tv = kzalloc(sizeof(*intel_tv), GFP_KERNEL);
 if (!intel_tv) {
  return;
 }

 intel_connector = intel_connector_alloc();
 if (!intel_connector) {
  kfree(intel_tv);
  return;
 }

 intel_encoder = &intel_tv->base;
 connector = &intel_connector->base;
 state = connector->state;
 intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;

 drm_connector_init(dev, connector, &intel_tv_connector_funcs,
      DRM_MODE_CONNECTOR_SVIDEO);

 drm_encoder_init(dev, &intel_encoder->base, &intel_tv_enc_funcs,
    DRM_MODE_ENCODER_TVDAC, "TV");

 intel_encoder->compute_config = intel_tv_compute_config;
 intel_encoder->get_config = intel_tv_get_config;
 intel_encoder->pre_enable = intel_tv_pre_enable;
 intel_encoder->enable = intel_enable_tv;
 intel_encoder->disable = intel_disable_tv;
 intel_encoder->get_hw_state = intel_tv_get_hw_state;
 intel_connector->get_hw_state = intel_connector_get_hw_state;

 intel_connector_attach_encoder(intel_connector, intel_encoder);

 intel_encoder->type = INTEL_OUTPUT_TVOUT;
 intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 intel_encoder->port = PORT_NONE;
 intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
 intel_encoder->cloneable = 0;
 intel_encoder->base.possible_crtcs = ((1 << 0) | (1 << 1));
 intel_tv->type = DRM_MODE_CONNECTOR_Unknown;


 state->tv.margins.left = 54;
 state->tv.margins.top = 36;
 state->tv.margins.right = 46;
 state->tv.margins.bottom = 37;

 state->tv.mode = initial_mode;

 drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;


 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {

  if (IS_GEN(dev_priv, 3) &&
      tv_modes[i].oversample == 1)
   break;

  tv_format_names[i] = tv_modes[i].name;
 }
 drm_mode_create_tv_properties(dev, i, tv_format_names);

 drm_object_attach_property(&connector->base, dev->mode_config.tv_mode_property,
       state->tv.mode);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_left_margin_property,
       state->tv.margins.left);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_top_margin_property,
       state->tv.margins.top);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_right_margin_property,
       state->tv.margins.right);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_bottom_margin_property,
       state->tv.margins.bottom);
}
