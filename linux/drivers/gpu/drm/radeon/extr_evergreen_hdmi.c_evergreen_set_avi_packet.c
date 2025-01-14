
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ AFMT_AVI_INFO0 ;
 scalar_t__ AFMT_AVI_INFO1 ;
 scalar_t__ AFMT_AVI_INFO2 ;
 scalar_t__ AFMT_AVI_INFO3 ;
 int HDMI_AVI_INFO_LINE (int) ;
 int HDMI_AVI_INFO_LINE_MASK ;
 scalar_t__ HDMI_INFOFRAME_CONTROL1 ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_P (scalar_t__,int ,int ) ;

void evergreen_set_avi_packet(struct radeon_device *rdev, u32 offset,
         unsigned char *buffer, size_t size)
{
 uint8_t *frame = buffer + 3;

 WREG32(AFMT_AVI_INFO0 + offset,
  frame[0x0] | (frame[0x1] << 8) | (frame[0x2] << 16) | (frame[0x3] << 24));
 WREG32(AFMT_AVI_INFO1 + offset,
  frame[0x4] | (frame[0x5] << 8) | (frame[0x6] << 16) | (frame[0x7] << 24));
 WREG32(AFMT_AVI_INFO2 + offset,
  frame[0x8] | (frame[0x9] << 8) | (frame[0xA] << 16) | (frame[0xB] << 24));
 WREG32(AFMT_AVI_INFO3 + offset,
  frame[0xC] | (frame[0xD] << 8) | (buffer[1] << 24));

 WREG32_P(HDMI_INFOFRAME_CONTROL1 + offset,
   HDMI_AVI_INFO_LINE(2),
   ~HDMI_AVI_INFO_LINE_MASK);
}
