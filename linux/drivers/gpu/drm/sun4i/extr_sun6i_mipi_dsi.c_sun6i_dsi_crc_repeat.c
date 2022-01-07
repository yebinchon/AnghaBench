
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int memset (int *,int ,size_t) ;
 int sun6i_dsi_crc_compute (int *,size_t) ;

__attribute__((used)) static u16 sun6i_dsi_crc_repeat(u8 pd, u8 *buffer, size_t len)
{
 memset(buffer, pd, len);

 return sun6i_dsi_crc_compute(buffer, len);
}
