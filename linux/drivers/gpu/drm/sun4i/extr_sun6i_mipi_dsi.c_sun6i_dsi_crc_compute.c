
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc_ccitt (int,int const*,size_t) ;

__attribute__((used)) static u16 sun6i_dsi_crc_compute(u8 const *buffer, size_t len)
{
 return crc_ccitt(0xffff, buffer, len);
}
