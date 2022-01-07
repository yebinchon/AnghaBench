
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;


 int ALIGN (int ,int) ;
 int OUT (struct etnaviv_cmdbuf*,int) ;
 int VIV_FE_LOAD_STATE_HEADER_COUNT (int) ;
 int VIV_FE_LOAD_STATE_HEADER_OFFSET (int) ;
 int VIV_FE_LOAD_STATE_HEADER_OFFSET__SHR ;
 int VIV_FE_LOAD_STATE_HEADER_OP_LOAD_STATE ;

__attribute__((used)) static inline void CMD_LOAD_STATE(struct etnaviv_cmdbuf *buffer,
 u32 reg, u32 value)
{
 u32 index = reg >> VIV_FE_LOAD_STATE_HEADER_OFFSET__SHR;

 buffer->user_size = ALIGN(buffer->user_size, 8);


 OUT(buffer, VIV_FE_LOAD_STATE_HEADER_OP_LOAD_STATE |
      VIV_FE_LOAD_STATE_HEADER_COUNT(1) |
      VIV_FE_LOAD_STATE_HEADER_OFFSET(index));
 OUT(buffer, value);
}
