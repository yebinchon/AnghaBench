
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct coresight_device {scalar_t__ type; int activated; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static int coresight_enabled_sink(struct device *dev, const void *data)
{
 const bool *reset = data;
 struct coresight_device *csdev = to_coresight_device(dev);

 if ((csdev->type == CORESIGHT_DEV_TYPE_SINK ||
      csdev->type == CORESIGHT_DEV_TYPE_LINKSINK) &&
      csdev->activated) {







  if (*reset)
   csdev->activated = 0;

  return 1;
 }

 return 0;
}
