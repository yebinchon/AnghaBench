
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void reply_to_mac_addr(u8 *mac, u32 t1, u32 t2)
{
 mac[0] = t1 >> 8;
 mac[1] = t1;
 mac[2] = t2 >> 24;
 mac[3] = t2 >> 16;
 mac[4] = t2 >> 8;
 mac[5] = t2;
}
