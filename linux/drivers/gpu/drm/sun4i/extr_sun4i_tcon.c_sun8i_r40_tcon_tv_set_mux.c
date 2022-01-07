
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_tcon {int id; TYPE_1__* dev; } ;
struct platform_device {int dev; } ;
struct drm_encoder {scalar_t__ encoder_type; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int CONFIG_DRM_SUN8I_TCON_TOP ;
 scalar_t__ DRM_MODE_ENCODER_TMDS ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_graph_get_port_by_id (int ,int ) ;
 struct device_node* of_graph_get_remote_node (int ,int ,int) ;
 int of_node_put (struct device_node*) ;
 int sun4i_tcon_of_get_id_from_port (struct device_node*) ;
 int sun8i_tcon_top_de_config (int *,int ,int) ;
 int sun8i_tcon_top_set_hdmi_src (int *,int) ;

__attribute__((used)) static int sun8i_r40_tcon_tv_set_mux(struct sun4i_tcon *tcon,
         const struct drm_encoder *encoder)
{
 struct device_node *port, *remote;
 struct platform_device *pdev;
 int id, ret;



 port = of_graph_get_port_by_id(tcon->dev->of_node, 0);
 if (!port)
  return -EINVAL;

 id = sun4i_tcon_of_get_id_from_port(port);
 of_node_put(port);

 remote = of_graph_get_remote_node(tcon->dev->of_node, 0, -1);
 if (!remote)
  return -EINVAL;

 pdev = of_find_device_by_node(remote);
 of_node_put(remote);
 if (!pdev)
  return -EINVAL;

 if (IS_ENABLED(CONFIG_DRM_SUN8I_TCON_TOP) &&
     encoder->encoder_type == DRM_MODE_ENCODER_TMDS) {
  ret = sun8i_tcon_top_set_hdmi_src(&pdev->dev, id);
  if (ret)
   return ret;
 }

 if (IS_ENABLED(CONFIG_DRM_SUN8I_TCON_TOP)) {
  ret = sun8i_tcon_top_de_config(&pdev->dev, tcon->id, id);
  if (ret)
   return ret;
 }

 return 0;
}
