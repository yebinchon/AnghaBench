
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcar_du_encoder {int output; } ;
struct rcar_du_device {int dev; int ddev; TYPE_1__* info; struct rcar_du_encoder** encoders; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {TYPE_2__* funcs; scalar_t__ name; } ;
typedef struct drm_panel drm_bridge ;
struct device_node {int dummy; } ;
typedef enum rcar_du_output { ____Placeholder_rcar_du_output } rcar_du_output ;
struct TYPE_4__ {int (* destroy ) (struct drm_encoder*) ;} ;
struct TYPE_3__ {int gen; } ;


 int DRM_MODE_CONNECTOR_DPI ;
 int DRM_MODE_ENCODER_NONE ;
 int ENOLINK ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_panel*) ;
 int PTR_ERR (struct drm_panel*) ;
 int RCAR_DU_OUTPUT_DPAD0 ;
 int RCAR_DU_OUTPUT_DPAD1 ;
 int RCAR_DU_OUTPUT_LVDS1 ;
 int dev_dbg (int ,char*,struct device_node*,int) ;
 struct drm_panel* devm_drm_panel_bridge_add (int ,struct drm_panel*,int ) ;
 int devm_kfree (int ,struct rcar_du_encoder*) ;
 struct rcar_du_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_panel*,int *) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int ,int *) ;
 int encoder_funcs ;
 int encoder_helper_funcs ;
 struct drm_panel* of_drm_find_bridge (struct device_node*) ;
 struct drm_panel* of_drm_find_panel (struct device_node*) ;
 int rcar_du_encoder_count_ports (struct device_node*) ;
 struct drm_encoder* rcar_encoder_to_drm_encoder (struct rcar_du_encoder*) ;
 scalar_t__ rcar_lvds_dual_link (struct drm_panel*) ;
 int stub1 (struct drm_encoder*) ;

int rcar_du_encoder_init(struct rcar_du_device *rcdu,
    enum rcar_du_output output,
    struct device_node *enc_node)
{
 struct rcar_du_encoder *renc;
 struct drm_encoder *encoder;
 struct drm_bridge *bridge;
 int ret;

 renc = devm_kzalloc(rcdu->dev, sizeof(*renc), GFP_KERNEL);
 if (renc == ((void*)0))
  return -ENOMEM;

 rcdu->encoders[output] = renc;
 renc->output = output;
 encoder = rcar_encoder_to_drm_encoder(renc);

 dev_dbg(rcdu->dev, "initializing encoder %pOF for output %u\n",
  enc_node, output);






 if ((output == RCAR_DU_OUTPUT_DPAD0 ||
      output == RCAR_DU_OUTPUT_DPAD1) &&
     rcar_du_encoder_count_ports(enc_node) == 1) {
  struct drm_panel *panel = of_drm_find_panel(enc_node);

  if (IS_ERR(panel)) {
   ret = PTR_ERR(panel);
   goto done;
  }

  bridge = devm_drm_panel_bridge_add(rcdu->dev, panel,
         DRM_MODE_CONNECTOR_DPI);
  if (IS_ERR(bridge)) {
   ret = PTR_ERR(bridge);
   goto done;
  }
 } else {
  bridge = of_drm_find_bridge(enc_node);
  if (!bridge) {
   ret = -EPROBE_DEFER;
   goto done;
  }
 }





 if (rcdu->info->gen >= 3 && output == RCAR_DU_OUTPUT_LVDS1) {
  if (rcar_lvds_dual_link(bridge)) {
   ret = -ENOLINK;
   goto done;
  }
 }

 ret = drm_encoder_init(rcdu->ddev, encoder, &encoder_funcs,
          DRM_MODE_ENCODER_NONE, ((void*)0));
 if (ret < 0)
  goto done;

 drm_encoder_helper_add(encoder, &encoder_helper_funcs);





 ret = drm_bridge_attach(encoder, bridge, ((void*)0));
 if (ret) {
  drm_encoder_cleanup(encoder);
  return ret;
 }

done:
 if (ret < 0) {
  if (encoder->name)
   encoder->funcs->destroy(encoder);
  devm_kfree(rcdu->dev, renc);
 }

 return ret;
}
