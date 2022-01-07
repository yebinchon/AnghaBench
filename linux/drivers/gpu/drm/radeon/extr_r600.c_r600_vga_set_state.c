
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int CONFIG_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void r600_vga_set_state(struct radeon_device *rdev, bool state)
{
 uint32_t temp;

 temp = RREG32(CONFIG_CNTL);
 if (state == 0) {
  temp &= ~(1<<0);
  temp |= (1<<1);
 } else {
  temp &= ~(1<<1);
 }
 WREG32(CONFIG_CNTL, temp);
}
