
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct etnaviv_cmdbuf {int user_size; } ;


 int ALIGN (int ,int) ;
 int OUT (struct etnaviv_cmdbuf*,int) ;
 int VIV_FE_LINK_HEADER_OP_LINK ;
 int VIV_FE_LINK_HEADER_PREFETCH (int ) ;

__attribute__((used)) static inline void CMD_LINK(struct etnaviv_cmdbuf *buffer,
 u16 prefetch, u32 address)
{
 buffer->user_size = ALIGN(buffer->user_size, 8);

 OUT(buffer, VIV_FE_LINK_HEADER_OP_LINK |
      VIV_FE_LINK_HEADER_PREFETCH(prefetch));
 OUT(buffer, address);
}
