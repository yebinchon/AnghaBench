
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ source_subtype; } ;
struct coresight_device {scalar_t__ type; int dev; TYPE_1__ subtype; } ;


 scalar_t__ CORESIGHT_DEV_SUBTYPE_SOURCE_PROC ;
 scalar_t__ CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE ;
 scalar_t__ CORESIGHT_DEV_TYPE_SOURCE ;
 int EINVAL ;
 int dev_err (int *,char*,char const*) ;

__attribute__((used)) static int coresight_validate_source(struct coresight_device *csdev,
         const char *function)
{
 u32 type, subtype;

 type = csdev->type;
 subtype = csdev->subtype.source_subtype;

 if (type != CORESIGHT_DEV_TYPE_SOURCE) {
  dev_err(&csdev->dev, "wrong device type in %s\n", function);
  return -EINVAL;
 }

 if (subtype != CORESIGHT_DEV_SUBTYPE_SOURCE_PROC &&
     subtype != CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE) {
  dev_err(&csdev->dev, "wrong device subtype in %s\n", function);
  return -EINVAL;
 }

 return 0;
}
