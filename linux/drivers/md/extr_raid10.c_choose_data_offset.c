
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10bio {int state; } ;
struct md_rdev {int new_data_offset; int data_offset; TYPE_1__* mddev; } ;
typedef int sector_t ;
struct TYPE_2__ {int recovery; } ;


 int MD_RECOVERY_RESHAPE ;
 int R10BIO_Previous ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static sector_t choose_data_offset(struct r10bio *r10_bio,
       struct md_rdev *rdev)
{
 if (!test_bit(MD_RECOVERY_RESHAPE, &rdev->mddev->recovery) ||
     test_bit(R10BIO_Previous, &r10_bio->state))
  return rdev->data_offset;
 else
  return rdev->new_data_offset;
}
