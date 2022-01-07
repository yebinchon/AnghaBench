
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int sun6i_dsi_ecc_compute (int) ;

__attribute__((used)) static u32 sun6i_dsi_build_sync_pkt(u8 dt, u8 vc, u8 d0, u8 d1)
{
 u32 val = dt & 0x3f;

 val |= (vc & 3) << 6;
 val |= (d0 & 0xff) << 8;
 val |= (d1 & 0xff) << 16;
 val |= sun6i_dsi_ecc_compute(val) << 24;

 return val;
}
