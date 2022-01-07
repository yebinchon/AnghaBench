
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {unsigned long num_doorbells; int used; } ;
struct radeon_device {TYPE_1__ doorbell; } ;


 int EINVAL ;
 int __set_bit (unsigned long,int ) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;

int radeon_doorbell_get(struct radeon_device *rdev, u32 *doorbell)
{
 unsigned long offset = find_first_zero_bit(rdev->doorbell.used, rdev->doorbell.num_doorbells);
 if (offset < rdev->doorbell.num_doorbells) {
  __set_bit(offset, rdev->doorbell.used);
  *doorbell = offset;
  return 0;
 } else {
  return -EINVAL;
 }
}
