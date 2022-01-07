
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EDID_LENGTH ;

__attribute__((used)) static int drm_edid_block_checksum(const u8 *raw_edid)
{
 int i;
 u8 csum = 0;
 for (i = 0; i < EDID_LENGTH; i++)
  csum += raw_edid[i];

 return csum;
}
