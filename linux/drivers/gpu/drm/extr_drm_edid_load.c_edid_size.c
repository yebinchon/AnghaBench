
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EDID_LENGTH ;

__attribute__((used)) static int edid_size(const u8 *edid, int data_size)
{
 if (data_size < EDID_LENGTH)
  return 0;

 return (edid[0x7e] + 1) * EDID_LENGTH;
}
