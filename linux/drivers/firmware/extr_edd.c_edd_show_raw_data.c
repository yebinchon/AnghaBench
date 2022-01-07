
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; int length; } ;
struct edd_info {TYPE_1__ params; } ;
struct edd_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 int memcpy (char*,TYPE_1__*,int) ;

__attribute__((used)) static ssize_t
edd_show_raw_data(struct edd_device *edev, char *buf)
{
 struct edd_info *info;
 ssize_t len = sizeof (info->params);
 if (!edev)
  return -EINVAL;
 info = edd_dev_get_info(edev);
 if (!info || !buf)
  return -EINVAL;

 if (!(info->params.key == 0xBEDD || info->params.key == 0xDDBE))
  len = info->params.length;


 if (len > (sizeof(info->params)))
  len = sizeof(info->params);

 memcpy(buf, &info->params, len);
 return len;
}
