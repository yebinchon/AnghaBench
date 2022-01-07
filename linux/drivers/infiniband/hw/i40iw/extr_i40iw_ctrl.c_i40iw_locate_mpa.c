
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int I40IW_MAC_HLEN ;

__attribute__((used)) static u8 *i40iw_locate_mpa(u8 *pkt)
{

 pkt += I40IW_MAC_HLEN;


 pkt += 4 * (pkt[0] & 0x0f);
 pkt += 4 * ((pkt[12] >> 4) & 0x0f);
 return pkt;
}
