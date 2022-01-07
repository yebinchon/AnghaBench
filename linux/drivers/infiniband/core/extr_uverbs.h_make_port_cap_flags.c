
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_port_attr {int port_cap_flags; scalar_t__ ip_gids; } ;


 int IB_UVERBS_PCF_IP_BASED_GIDS ;

__attribute__((used)) static inline u32 make_port_cap_flags(const struct ib_port_attr *attr)
{
 u32 res;






 res = attr->port_cap_flags & ~(u32)IB_UVERBS_PCF_IP_BASED_GIDS;

 if (attr->ip_gids)
  res |= IB_UVERBS_PCF_IP_BASED_GIDS;

 return res;
}
