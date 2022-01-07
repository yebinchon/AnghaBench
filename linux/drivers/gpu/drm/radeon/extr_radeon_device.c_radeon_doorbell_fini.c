
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct radeon_device {TYPE_1__ doorbell; } ;


 int iounmap (int *) ;

__attribute__((used)) static void radeon_doorbell_fini(struct radeon_device *rdev)
{
 iounmap(rdev->doorbell.ptr);
 rdev->doorbell.ptr = ((void*)0);
}
