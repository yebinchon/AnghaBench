
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int get_unaligned_be32 (int *) ;

__attribute__((used)) static u16 elants_i2c_parse_version(u8 *buf)
{
 return get_unaligned_be32(buf) >> 4;
}
