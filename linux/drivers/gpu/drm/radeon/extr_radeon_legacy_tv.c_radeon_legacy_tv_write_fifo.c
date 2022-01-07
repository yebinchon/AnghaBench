
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_HOST_FIFO_WT ;
 int RADEON_HOST_FIFO_WT_ACK ;
 int RADEON_TV_HOST_RD_WT_CNTL ;
 int RADEON_TV_HOST_WRITE_DATA ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void radeon_legacy_tv_write_fifo(struct radeon_encoder *radeon_encoder,
     uint16_t addr, uint32_t value)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t tmp;
 int i = 0;

 WREG32(RADEON_TV_HOST_WRITE_DATA, value);

 WREG32(RADEON_TV_HOST_RD_WT_CNTL, addr);
 WREG32(RADEON_TV_HOST_RD_WT_CNTL, addr | RADEON_HOST_FIFO_WT);

 do {
  tmp = RREG32(RADEON_TV_HOST_RD_WT_CNTL);
  if ((tmp & RADEON_HOST_FIFO_WT_ACK) == 0)
   break;
  i++;
 } while (i < 10000);
 WREG32(RADEON_TV_HOST_RD_WT_CNTL, 0);
}
