
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* bitmap; scalar_t__ degraded; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int need_sync; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENOENT ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t can_clear_store(struct mddev *mddev, const char *buf, size_t len)
{
 if (mddev->bitmap == ((void*)0))
  return -ENOENT;
 if (strncmp(buf, "false", 5) == 0)
  mddev->bitmap->need_sync = 1;
 else if (strncmp(buf, "true", 4) == 0) {
  if (mddev->degraded)
   return -EBUSY;
  mddev->bitmap->need_sync = 0;
 } else
  return -EINVAL;
 return len;
}
