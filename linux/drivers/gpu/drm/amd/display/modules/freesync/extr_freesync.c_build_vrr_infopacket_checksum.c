
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_info_packet {unsigned char* sb; int valid; scalar_t__ hb3; scalar_t__ hb2; scalar_t__ hb1; scalar_t__ hb0; } ;



__attribute__((used)) static void build_vrr_infopacket_checksum(unsigned int *payload_size,
  struct dc_info_packet *infopacket)
{

 unsigned int idx = 0;
 unsigned char checksum = 0;

 checksum += infopacket->hb0;
 checksum += infopacket->hb1;
 checksum += infopacket->hb2;
 checksum += infopacket->hb3;

 for (idx = 1; idx <= *payload_size; idx++)
  checksum += infopacket->sb[idx];


 infopacket->sb[0] = (unsigned char)(0x100 - checksum);

 infopacket->valid = 1;
}
