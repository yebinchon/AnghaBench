
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kirin_drm_data {int crtc_helper_funcs; int crtc_funcs; } ;
struct drm_plane {int dummy; } ;
struct drm_device {TYPE_1__* dev; } ;
struct drm_crtc {struct device_node* port; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int drm_crtc_helper_add (struct drm_crtc*,int ) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,int *,int ,int *) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int kirin_drm_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
          struct drm_plane *plane,
          const struct kirin_drm_data *driver_data)
{
 struct device_node *port;
 int ret;




 port = of_get_child_by_name(dev->dev->of_node, "port");
 if (!port) {
  DRM_ERROR("no port node found in %pOF\n", dev->dev->of_node);
  return -EINVAL;
 }
 of_node_put(port);
 crtc->port = port;

 ret = drm_crtc_init_with_planes(dev, crtc, plane, ((void*)0),
     driver_data->crtc_funcs, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to init crtc.\n");
  return ret;
 }

 drm_crtc_helper_add(crtc, driver_data->crtc_helper_funcs);

 return 0;
}
