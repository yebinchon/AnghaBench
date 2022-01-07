
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_doorbells; int used; } ;
struct radeon_device {TYPE_1__ doorbell; } ;


 int __clear_bit (scalar_t__,int ) ;

void radeon_doorbell_free(struct radeon_device *rdev, u32 doorbell)
{
 if (doorbell < rdev->doorbell.num_doorbells)
  __clear_bit(doorbell, rdev->doorbell.used);
}
