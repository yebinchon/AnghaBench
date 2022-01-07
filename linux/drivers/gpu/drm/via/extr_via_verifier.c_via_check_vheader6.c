
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verifier_state_t ;
typedef int uint32_t ;


 int DRM_ERROR (char*) ;
 int state_command ;
 int state_error ;
 scalar_t__ verify_mmio_address (int ) ;
 scalar_t__ verify_video_tail (int const**,int const*,int) ;

__attribute__((used)) static __inline__ verifier_state_t
via_check_vheader6(uint32_t const **buffer, const uint32_t * buf_end)
{
 uint32_t data;
 const uint32_t *buf = *buffer;
 uint32_t i;

 if (buf_end - buf < 4) {
  DRM_ERROR("Illegal termination of video header6 command\n");
  return state_error;
 }
 buf++;
 data = *buf++;
 if (*buf++ != 0x00F60000) {
  DRM_ERROR("Illegal header6 header data\n");
  return state_error;
 }
 if (*buf++ != 0x00000000) {
  DRM_ERROR("Illegal header6 header data\n");
  return state_error;
 }
 if ((buf_end - buf) < (data << 1)) {
  DRM_ERROR("Illegal termination of video header6 command\n");
  return state_error;
 }
 for (i = 0; i < data; ++i) {
  if (verify_mmio_address(*buf++))
   return state_error;
  buf++;
 }
 data <<= 1;
 if ((data & 3) && verify_video_tail(&buf, buf_end, 4 - (data & 3)))
  return state_error;
 *buffer = buf;
 return state_command;
}
