
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef size_t u32 ;







__attribute__((used)) static u8 xgene_dma_encode_xor_flyby(u32 src_cnt)
{
 static u8 flyby_type[] = {
  131,
  131,
  131,
  130,
  129,
  128
 };

 return flyby_type[src_cnt];
}
