
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int CONFIG_CNTL__VGA_DIS_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCONFIG_CNTL ;

__attribute__((used)) static void cik_vga_set_state(struct amdgpu_device *adev, bool state)
{
 uint32_t tmp;

 tmp = RREG32(mmCONFIG_CNTL);
 if (!state)
  tmp |= CONFIG_CNTL__VGA_DIS_MASK;
 else
  tmp &= ~CONFIG_CNTL__VGA_DIS_MASK;
 WREG32(mmCONFIG_CNTL, tmp);
}
