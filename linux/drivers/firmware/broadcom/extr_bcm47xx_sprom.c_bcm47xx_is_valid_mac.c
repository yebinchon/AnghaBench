
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool bcm47xx_is_valid_mac(u8 *mac)
{
 return mac && !(mac[0] == 0x00 && mac[1] == 0x90 && mac[2] == 0x4c);
}
