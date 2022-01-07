
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct drm_connector {TYPE_3__* dev; TYPE_1__* edid_blob_ptr; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_2__ mode_config; } ;
struct TYPE_4__ {unsigned char* data; size_t length; } ;


 struct device* kobj_to_dev (struct kobject*) ;
 int memcpy (char*,unsigned char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t edid_show(struct file *filp, struct kobject *kobj,
    struct bin_attribute *attr, char *buf, loff_t off,
    size_t count)
{
 struct device *connector_dev = kobj_to_dev(kobj);
 struct drm_connector *connector = to_drm_connector(connector_dev);
 unsigned char *edid;
 size_t size;
 ssize_t ret = 0;

 mutex_lock(&connector->dev->mode_config.mutex);
 if (!connector->edid_blob_ptr)
  goto unlock;

 edid = connector->edid_blob_ptr->data;
 size = connector->edid_blob_ptr->length;
 if (!edid)
  goto unlock;

 if (off >= size)
  goto unlock;

 if (off + count > size)
  count = size - off;
 memcpy(buf, edid + off, count);

 ret = count;
unlock:
 mutex_unlock(&connector->dev->mode_config.mutex);

 return ret;
}
