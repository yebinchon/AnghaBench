
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;
struct xen_drm_front_info {struct xenbus_device* xb_dev; } ;
struct xen_drm_front_cfg {int be_alloc; scalar_t__ num_connectors; int * connectors; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_ERROR (char*,int ) ;
 int DRM_INFO (char*) ;
 int ENODEV ;
 int XENDISPL_FIELD_BE_ALLOC ;
 int cfg_connector (struct xen_drm_front_info*,int *,int ,int) ;
 scalar_t__ xenbus_read_unsigned (int ,int ,int ) ;

int xen_drm_front_cfg_card(struct xen_drm_front_info *front_info,
      struct xen_drm_front_cfg *cfg)
{
 struct xenbus_device *xb_dev = front_info->xb_dev;
 int ret, i;

 if (xenbus_read_unsigned(front_info->xb_dev->nodename,
     XENDISPL_FIELD_BE_ALLOC, 0)) {
  DRM_INFO("Backend can provide display buffers\n");
  cfg->be_alloc = 1;
 }

 cfg->num_connectors = 0;
 for (i = 0; i < ARRAY_SIZE(cfg->connectors); i++) {
  ret = cfg_connector(front_info, &cfg->connectors[i],
        xb_dev->nodename, i);
  if (ret < 0)
   break;
  cfg->num_connectors++;
 }

 if (!cfg->num_connectors) {
  DRM_ERROR("No connector(s) configured at %s\n",
     xb_dev->nodename);
  return -ENODEV;
 }

 return 0;
}
