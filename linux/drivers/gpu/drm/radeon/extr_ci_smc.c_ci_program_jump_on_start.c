
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
typedef int data ;


 int ci_copy_bytes_to_smc (struct radeon_device*,int,int const*,int,int) ;

int ci_program_jump_on_start(struct radeon_device *rdev)
{
 static const u8 data[] = { 0xE0, 0x00, 0x80, 0x40 };

 return ci_copy_bytes_to_smc(rdev, 0x0, data, 4, sizeof(data)+1);
}
