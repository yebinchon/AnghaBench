
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct dc_info_packet {size_t* sb; scalar_t__ valid; } ;



__attribute__((used)) static void patch_gamut_packet_checksum(
  struct dc_info_packet *gamut_packet)
{

 if (gamut_packet->valid) {
  uint8_t chk_sum = 0;
  uint8_t *ptr;
  uint8_t i;


  ptr = &gamut_packet->sb[3];

  for (i = 0; i <= gamut_packet->sb[1]; i++)
   chk_sum += ptr[i];

  gamut_packet->sb[2] = (uint8_t) (0x100 - chk_sum);
 }
}
