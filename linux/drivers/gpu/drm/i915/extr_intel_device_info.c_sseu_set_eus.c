
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sseu_dev_info {int* eu_mask; int max_eus_per_subslice; } ;


 int BITS_PER_BYTE ;
 int GEN_SSEU_STRIDE (int ) ;
 int sseu_eu_idx (struct sseu_dev_info*,int,int) ;

__attribute__((used)) static void sseu_set_eus(struct sseu_dev_info *sseu, int slice, int subslice,
    u16 eu_mask)
{
 int i, offset = sseu_eu_idx(sseu, slice, subslice);

 for (i = 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice); i++) {
  sseu->eu_mask[offset + i] =
   (eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
 }
}
