
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int memcpy (int*,int*,int) ;

void bnxt_qplib_get_guid(u8 *dev_addr, u8 *guid)
{
 u8 mac[ETH_ALEN];


 memcpy(mac, dev_addr, ETH_ALEN);
 guid[0] = mac[0] ^ 2;
 guid[1] = mac[1];
 guid[2] = mac[2];
 guid[3] = 0xff;
 guid[4] = 0xfe;
 guid[5] = mac[3];
 guid[6] = mac[4];
 guid[7] = mac[5];
}
