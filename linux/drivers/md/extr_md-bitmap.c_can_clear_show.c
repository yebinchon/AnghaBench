
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int lock; TYPE_1__* bitmap; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ need_sync; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t can_clear_show(struct mddev *mddev, char *page)
{
 int len;
 spin_lock(&mddev->lock);
 if (mddev->bitmap)
  len = sprintf(page, "%s\n", (mddev->bitmap->need_sync ?
          "false" : "true"));
 else
  len = sprintf(page, "\n");
 spin_unlock(&mddev->lock);
 return len;
}
