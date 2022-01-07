
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_drm {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 struct device_node* of_graph_get_remote_node (int ,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool meson_venc_cvbs_connector_is_available(struct meson_drm *priv)
{
 struct device_node *remote;

 remote = of_graph_get_remote_node(priv->dev->of_node, 0, 0);
 if (!remote)
  return 0;

 of_node_put(remote);
 return 1;
}
