
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t FW_POS_CHECKSUM ;

__attribute__((used)) static u8 elants_i2c_calculate_checksum(u8 *buf)
{
 u8 checksum = 0;
 u8 i;

 for (i = 0; i < FW_POS_CHECKSUM; i++)
  checksum += buf[i];

 return checksum;
}
