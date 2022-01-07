
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int SMC_INT_REQ ;
 int WREG32 (int ,int ) ;

void trinity_release_mutex(struct radeon_device *rdev)
{
 WREG32(SMC_INT_REQ, 0);
}
