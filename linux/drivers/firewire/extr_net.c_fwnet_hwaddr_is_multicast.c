
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool fwnet_hwaddr_is_multicast(u8 *ha)
{
 return !!(*ha & 1);
}
