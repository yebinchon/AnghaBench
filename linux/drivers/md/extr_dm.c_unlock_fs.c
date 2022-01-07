
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; int * frozen_sb; int bdev; } ;


 int DMF_FROZEN ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int thaw_bdev (int ,int *) ;

__attribute__((used)) static void unlock_fs(struct mapped_device *md)
{
 if (!test_bit(DMF_FROZEN, &md->flags))
  return;

 thaw_bdev(md->bdev, md->frozen_sb);
 md->frozen_sb = ((void*)0);
 clear_bit(DMF_FROZEN, &md->flags);
}
