
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct BD_HEADER {int size; } ;


 int be16_to_cpu (int ) ;

u32 spum_payload_length(u8 *spu_hdr)
{
 struct BD_HEADER *bd;
 u32 pl_len;


 bd = (struct BD_HEADER *)(spu_hdr + 8);
 pl_len = be16_to_cpu(bd->size);

 return pl_len;
}
