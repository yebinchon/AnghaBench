
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int crtc_mask; int get_config; int get_hw_state; int enable; int pre_enable; int post_pll_disable; int pre_pll_enable; int post_disable; int disable; int compute_config; scalar_t__ cloneable; int port; int power_domain; int type; int base; } ;
struct intel_dp_mst_encoder {int pipe; struct intel_digital_port* primary; struct intel_encoder base; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {int port; int power_domain; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_ENCODER_DPMST ;
 int GFP_KERNEL ;
 int INTEL_OUTPUT_DP_MST ;
 int drm_encoder_init (struct drm_device*,int *,int *,int ,char*,int ) ;
 int intel_dp_mst_compute_config ;
 int intel_dp_mst_enc_funcs ;
 int intel_dp_mst_enc_get_config ;
 int intel_dp_mst_enc_get_hw_state ;
 int intel_mst_disable_dp ;
 int intel_mst_enable_dp ;
 int intel_mst_post_disable_dp ;
 int intel_mst_post_pll_disable_dp ;
 int intel_mst_pre_enable_dp ;
 int intel_mst_pre_pll_enable_dp ;
 struct intel_dp_mst_encoder* kzalloc (int,int ) ;
 int pipe_name (int) ;

__attribute__((used)) static struct intel_dp_mst_encoder *
intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum pipe pipe)
{
 struct intel_dp_mst_encoder *intel_mst;
 struct intel_encoder *intel_encoder;
 struct drm_device *dev = intel_dig_port->base.base.dev;

 intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);

 if (!intel_mst)
  return ((void*)0);

 intel_mst->pipe = pipe;
 intel_encoder = &intel_mst->base;
 intel_mst->primary = intel_dig_port;

 drm_encoder_init(dev, &intel_encoder->base, &intel_dp_mst_enc_funcs,
    DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));

 intel_encoder->type = INTEL_OUTPUT_DP_MST;
 intel_encoder->power_domain = intel_dig_port->base.power_domain;
 intel_encoder->port = intel_dig_port->base.port;
 intel_encoder->crtc_mask = 0x7;
 intel_encoder->cloneable = 0;

 intel_encoder->compute_config = intel_dp_mst_compute_config;
 intel_encoder->disable = intel_mst_disable_dp;
 intel_encoder->post_disable = intel_mst_post_disable_dp;
 intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 intel_encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
 intel_encoder->pre_enable = intel_mst_pre_enable_dp;
 intel_encoder->enable = intel_mst_enable_dp;
 intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
 intel_encoder->get_config = intel_dp_mst_enc_get_config;

 return intel_mst;

}
