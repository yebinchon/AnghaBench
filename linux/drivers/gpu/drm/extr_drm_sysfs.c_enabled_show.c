
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int encoder; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int READ_ONCE (int ) ;
 int snprintf (char*,int ,char*) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t enabled_show(struct device *device,
       struct device_attribute *attr,
      char *buf)
{
 struct drm_connector *connector = to_drm_connector(device);
 bool enabled;

 enabled = READ_ONCE(connector->encoder);

 return snprintf(buf, PAGE_SIZE, enabled ? "enabled\n" : "disabled\n");
}
