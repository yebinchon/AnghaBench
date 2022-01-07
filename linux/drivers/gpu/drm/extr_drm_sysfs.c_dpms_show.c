
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dpms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int READ_ONCE (int ) ;
 char* drm_get_dpms_name (int) ;
 int snprintf (char*,int ,char*,char*) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t dpms_show(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct drm_connector *connector = to_drm_connector(device);
 int dpms;

 dpms = READ_ONCE(connector->dpms);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   drm_get_dpms_name(dpms));
}
