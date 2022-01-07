
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cursor_pitch { ____Placeholder_cursor_pitch } cursor_pitch ;


 int CURSOR_PITCH_128_PIXELS ;
 int CURSOR_PITCH_256_PIXELS ;
 int CURSOR_PITCH_64_PIXELS ;
 int DC_ERR (char*,unsigned int) ;

enum cursor_pitch hubp1_get_cursor_pitch(unsigned int pitch)
{
 enum cursor_pitch hw_pitch;

 switch (pitch) {
 case 64:
  hw_pitch = CURSOR_PITCH_64_PIXELS;
  break;
 case 128:
  hw_pitch = CURSOR_PITCH_128_PIXELS;
  break;
 case 256:
  hw_pitch = CURSOR_PITCH_256_PIXELS;
  break;
 default:
  DC_ERR("Invalid cursor pitch of %d. "
    "Only 64/128/256 is supported on DCN.\n", pitch);
  hw_pitch = CURSOR_PITCH_64_PIXELS;
  break;
 }
 return hw_pitch;
}
