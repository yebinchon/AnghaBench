
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int misr (int ,int const) ;

__attribute__((used)) static u16 wdt87xx_calculate_checksum(const u8 *data, size_t length)
{
 u16 checksum = 0;
 size_t i;

 for (i = 0; i < length; i++)
  checksum = misr(checksum, data[i]);

 return checksum;
}
