
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_cmdbuf {int user_size; } ;


 int ALIGN (int ,int) ;
 int OUT (struct etnaviv_cmdbuf*,int ) ;
 int VIV_FE_END_HEADER_OP_END ;

__attribute__((used)) static inline void CMD_END(struct etnaviv_cmdbuf *buffer)
{
 buffer->user_size = ALIGN(buffer->user_size, 8);

 OUT(buffer, VIV_FE_END_HEADER_OP_END);
}
