
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ is_atom_bios; } ;


 int DRM_INFO (char*) ;
 int radeon_atombios_i2c_init (struct radeon_device*) ;
 int radeon_combios_i2c_init (struct radeon_device*) ;
 scalar_t__ radeon_hw_i2c ;

void radeon_i2c_init(struct radeon_device *rdev)
{
 if (radeon_hw_i2c)
  DRM_INFO("hw_i2c forced on, you may experience display detection problems!\n");

 if (rdev->is_atom_bios)
  radeon_atombios_i2c_init(rdev);
 else
  radeon_combios_i2c_init(rdev);
}
