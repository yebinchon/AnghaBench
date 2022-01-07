
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct coresight_device {scalar_t__ type; TYPE_1__* ea; } ;
struct TYPE_2__ {scalar_t__ var; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static int coresight_sink_by_id(struct device *dev, const void *data)
{
 struct coresight_device *csdev = to_coresight_device(dev);
 unsigned long hash;

 if (csdev->type == CORESIGHT_DEV_TYPE_SINK ||
      csdev->type == CORESIGHT_DEV_TYPE_LINKSINK) {

  if (!csdev->ea)
   return 0;




  hash = (unsigned long)csdev->ea->var;

  if ((u32)hash == *(u32 *)data)
   return 1;
 }

 return 0;
}
