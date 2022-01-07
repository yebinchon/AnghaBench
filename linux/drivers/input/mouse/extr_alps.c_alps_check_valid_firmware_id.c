
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool alps_check_valid_firmware_id(unsigned char id[])
{
 if (id[0] == 0x73)
  return 1;

 if (id[0] == 0x88 &&
     (id[1] == 0x07 ||
      id[1] == 0x08 ||
      (id[1] & 0xf0) == 0xb0 ||
      (id[1] & 0xf0) == 0xc0)) {
  return 1;
 }

 return 0;
}
