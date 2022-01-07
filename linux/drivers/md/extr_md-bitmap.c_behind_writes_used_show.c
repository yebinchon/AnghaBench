
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int lock; TYPE_1__* bitmap; } ;
typedef int ssize_t ;
struct TYPE_2__ {int behind_writes_used; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
behind_writes_used_show(struct mddev *mddev, char *page)
{
 ssize_t ret;
 spin_lock(&mddev->lock);
 if (mddev->bitmap == ((void*)0))
  ret = sprintf(page, "0\n");
 else
  ret = sprintf(page, "%lu\n",
         mddev->bitmap->behind_writes_used);
 spin_unlock(&mddev->lock);
 return ret;
}
