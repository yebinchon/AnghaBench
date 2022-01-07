
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_type; int host_bus_type; } ;
struct edd_info {TYPE_1__ params; } ;
struct edd_device {int dummy; } ;


 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 int strlen (char const*) ;
 int strncmp (int ,char const*,int ) ;

__attribute__((used)) static int
edd_dev_is_type(struct edd_device *edev, const char *type)
{
 struct edd_info *info;
 if (!edev)
  return 0;
 info = edd_dev_get_info(edev);

 if (type && info) {
  if (!strncmp(info->params.host_bus_type, type, strlen(type)) ||
      !strncmp(info->params.interface_type, type, strlen(type)))
   return 1;
 }
 return 0;
}
