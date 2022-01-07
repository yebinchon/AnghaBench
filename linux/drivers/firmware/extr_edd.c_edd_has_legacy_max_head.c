
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_info {scalar_t__ legacy_max_head; } ;
struct edd_device {int dummy; } ;


 struct edd_info* edd_dev_get_info (struct edd_device*) ;

__attribute__((used)) static int
edd_has_legacy_max_head(struct edd_device *edev)
{
 struct edd_info *info;
 if (!edev)
  return 0;
 info = edd_dev_get_info(edev);
 if (!info)
  return 0;
 return info->legacy_max_head > 0;
}
