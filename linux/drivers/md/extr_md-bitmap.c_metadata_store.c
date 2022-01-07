
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int external; scalar_t__ offset; scalar_t__ file; } ;
struct mddev {TYPE_1__ bitmap_info; scalar_t__ bitmap; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t metadata_store(struct mddev *mddev, const char *buf, size_t len)
{
 if (mddev->bitmap ||
     mddev->bitmap_info.file ||
     mddev->bitmap_info.offset)
  return -EBUSY;
 if (strncmp(buf, "external", 8) == 0)
  mddev->bitmap_info.external = 1;
 else if ((strncmp(buf, "internal", 8) == 0) ||
   (strncmp(buf, "clustered", 9) == 0))
  mddev->bitmap_info.external = 0;
 else
  return -EINVAL;
 return len;
}
