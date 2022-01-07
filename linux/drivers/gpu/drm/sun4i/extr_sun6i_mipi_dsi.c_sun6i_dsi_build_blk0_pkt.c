
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int MIPI_DSI_BLANKING_PACKET ;
 int sun6i_dsi_build_sync_pkt (int ,int ,int,int) ;

__attribute__((used)) static u32 sun6i_dsi_build_blk0_pkt(u8 vc, u16 wc)
{
 return sun6i_dsi_build_sync_pkt(MIPI_DSI_BLANKING_PACKET, vc,
     wc & 0xff, wc >> 8);
}
