
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {int dummy; } ;
struct device {int dummy; } ;
struct xenbus_device {struct device dev; } ;
struct xen_drm_front_info {int dbuf_list; int io_lock; struct xenbus_device* xb_dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRM_ERROR (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int XenbusStateInitialising ;
 int dev_set_drvdata (struct device*,struct xen_drm_front_info*) ;
 struct xen_drm_front_info* devm_kzalloc (struct device*,int,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int spin_lock_init (int *) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

__attribute__((used)) static int xen_drv_probe(struct xenbus_device *xb_dev,
    const struct xenbus_device_id *id)
{
 struct xen_drm_front_info *front_info;
 struct device *dev = &xb_dev->dev;
 int ret;

 ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
 if (ret < 0) {
  DRM_ERROR("Cannot setup DMA mask, ret %d", ret);
  return ret;
 }

 front_info = devm_kzalloc(&xb_dev->dev,
      sizeof(*front_info), GFP_KERNEL);
 if (!front_info)
  return -ENOMEM;

 front_info->xb_dev = xb_dev;
 spin_lock_init(&front_info->io_lock);
 INIT_LIST_HEAD(&front_info->dbuf_list);
 dev_set_drvdata(&xb_dev->dev, front_info);

 return xenbus_switch_state(xb_dev, XenbusStateInitialising);
}
