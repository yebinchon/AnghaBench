
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sb_flags; int pending_writes; int sb_wait; } ;


 int EAGAIN ;
 int MD_SB_NEED_REWRITE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wait_event (int ,int) ;

int md_super_wait(struct mddev *mddev)
{

 wait_event(mddev->sb_wait, atomic_read(&mddev->pending_writes)==0);
 if (test_and_clear_bit(MD_SB_NEED_REWRITE, &mddev->sb_flags))
  return -EAGAIN;
 return 0;
}
