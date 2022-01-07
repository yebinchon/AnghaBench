
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int blocked_wait; int flags; int badblocks; } ;
typedef int ssize_t ;


 int BlockedBadBlocks ;
 int badblocks_store (int *,char const*,size_t,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t bb_store(struct md_rdev *rdev, const char *page, size_t len)
{
 int rv = badblocks_store(&rdev->badblocks, page, len, 0);

 if (test_and_clear_bit(BlockedBadBlocks, &rdev->flags))
  wake_up(&rdev->blocked_wait);
 return rv;
}
