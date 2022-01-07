
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nvkm_perfsig {scalar_t__* source; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;

__attribute__((used)) static u8
nvkm_perfsig_count_perfsrc(struct nvkm_perfsig *sig)
{
 u8 source_nr = 0, i;

 for (i = 0; i < ARRAY_SIZE(sig->source); i++) {
  if (sig->source[i])
   source_nr++;
 }
 return source_nr;
}
