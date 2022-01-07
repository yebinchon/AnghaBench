
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SIZE_OF_CRC ;
 int SIZE_OF_LT ;

__attribute__((used)) static inline int hfi1_get_16b_padding(u32 hdr_size, u32 payload)
{
 return -(hdr_size + payload + (SIZE_OF_CRC << 2) +
       SIZE_OF_LT) & 0x7;
}
