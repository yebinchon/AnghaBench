
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int htonl (scalar_t__) ;
 scalar_t__ ipv4_is_loopback (int ) ;

__attribute__((used)) static bool i40iw_ipv4_is_loopback(u32 loc_addr, u32 rem_addr)
{
 return ipv4_is_loopback(htonl(rem_addr)) || (loc_addr == rem_addr);
}
