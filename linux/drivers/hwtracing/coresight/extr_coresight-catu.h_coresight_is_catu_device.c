
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ helper_subtype; } ;
struct coresight_device {scalar_t__ type; TYPE_1__ subtype; } ;


 int CONFIG_CORESIGHT_CATU ;
 scalar_t__ CORESIGHT_DEV_SUBTYPE_HELPER_CATU ;
 scalar_t__ CORESIGHT_DEV_TYPE_HELPER ;
 int IS_ENABLED (int ) ;

__attribute__((used)) static inline bool coresight_is_catu_device(struct coresight_device *csdev)
{
 if (!IS_ENABLED(CONFIG_CORESIGHT_CATU))
  return 0;
 if (csdev->type != CORESIGHT_DEV_TYPE_HELPER)
  return 0;
 if (csdev->subtype.helper_subtype != CORESIGHT_DEV_SUBTYPE_HELPER_CATU)
  return 0;
 return 1;
}
