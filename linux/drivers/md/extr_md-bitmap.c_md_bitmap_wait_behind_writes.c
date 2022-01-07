
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct bitmap* bitmap; } ;
struct bitmap {int behind_writes; int behind_wait; } ;


 scalar_t__ atomic_read (int *) ;
 int mdname (struct mddev*) ;
 int pr_debug (char*,int ) ;
 int wait_event (int ,int) ;

void md_bitmap_wait_behind_writes(struct mddev *mddev)
{
 struct bitmap *bitmap = mddev->bitmap;


 if (bitmap && atomic_read(&bitmap->behind_writes) > 0) {
  pr_debug("md:%s: behind writes in progress - waiting to stop.\n",
    mdname(mddev));

  wait_event(bitmap->behind_wait,
      atomic_read(&bitmap->behind_writes) == 0);
 }
}
