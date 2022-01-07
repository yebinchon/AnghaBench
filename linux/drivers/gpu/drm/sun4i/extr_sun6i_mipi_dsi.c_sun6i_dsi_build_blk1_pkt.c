
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int SUN6I_DSI_BLK_PD (int ) ;
 int SUN6I_DSI_BLK_PF (int ) ;
 int sun6i_dsi_crc_repeat (int ,int *,size_t) ;

__attribute__((used)) static u32 sun6i_dsi_build_blk1_pkt(u16 pd, u8 *buffer, size_t len)
{
 u32 val = SUN6I_DSI_BLK_PD(pd);

 return val | SUN6I_DSI_BLK_PF(sun6i_dsi_crc_repeat(pd, buffer, len));
}
