
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int ** i2c_bus; } ;


 int RADEON_MAX_I2C_BUS ;
 int radeon_i2c_destroy (int *) ;

void radeon_i2c_fini(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < RADEON_MAX_I2C_BUS; i++) {
  if (rdev->i2c_bus[i]) {
   radeon_i2c_destroy(rdev->i2c_bus[i]);
   rdev->i2c_bus[i] = ((void*)0);
  }
 }
}
