
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;


 int ALIGN (int ,int) ;
 int OUT (struct etnaviv_cmdbuf*,int) ;
 int VIV_FE_STALL_HEADER_OP_STALL ;
 int VIV_FE_STALL_TOKEN_FROM (int ) ;
 int VIV_FE_STALL_TOKEN_TO (int ) ;

__attribute__((used)) static inline void CMD_STALL(struct etnaviv_cmdbuf *buffer,
 u32 from, u32 to)
{
 buffer->user_size = ALIGN(buffer->user_size, 8);

 OUT(buffer, VIV_FE_STALL_HEADER_OP_STALL);
 OUT(buffer, VIV_FE_STALL_TOKEN_FROM(from) | VIV_FE_STALL_TOKEN_TO(to));
}
