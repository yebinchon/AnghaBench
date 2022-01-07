
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*,int ,int ) ;

__attribute__((used)) static void radeon_invalid_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 DRM_ERROR("Invalid callback to write register 0x%04X with 0x%08X\n",
    reg, v);
 BUG_ON(1);
}
