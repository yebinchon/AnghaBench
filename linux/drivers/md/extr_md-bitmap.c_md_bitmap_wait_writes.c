
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ file; } ;
struct bitmap {int mddev; int pending_writes; int write_wait; TYPE_1__ storage; } ;


 scalar_t__ atomic_read (int *) ;
 int md_super_wait (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void md_bitmap_wait_writes(struct bitmap *bitmap)
{
 if (bitmap->storage.file)
  wait_event(bitmap->write_wait,
      atomic_read(&bitmap->pending_writes)==0);
 else







  md_super_wait(bitmap->mddev);
}
