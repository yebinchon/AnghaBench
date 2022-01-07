
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int connected; int drm_dev; struct edid* raw_edid; } ;
struct edid {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DRM_DEV_DEBUG_KMS (struct device*,char*) ;
 int EINVAL ;
 struct vidi_context* dev_get_drvdata (struct device*) ;
 int drm_helper_hpd_irq_event (int ) ;
 scalar_t__ fake_edid_info ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t vidi_store_connection(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct vidi_context *ctx = dev_get_drvdata(dev);
 int ret;

 ret = kstrtoint(buf, 0, &ctx->connected);
 if (ret)
  return ret;

 if (ctx->connected > 1)
  return -EINVAL;


 if (!ctx->raw_edid)
  ctx->raw_edid = (struct edid *)fake_edid_info;


 if (ctx->raw_edid != (struct edid *)fake_edid_info) {
  DRM_DEV_DEBUG_KMS(dev, "edid data is not fake data.\n");
  return -EINVAL;
 }

 DRM_DEV_DEBUG_KMS(dev, "requested connection.\n");

 drm_helper_hpd_irq_event(ctx->drm_dev);

 return len;
}
