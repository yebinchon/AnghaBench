
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct fsl_re_cmpnd_frame {int efrl32; int addr_low; int addr_high; } ;
typedef int dma_addr_t ;


 int FSL_RE_CF_FINAL_SHIFT ;
 size_t FSL_RE_CF_LENGTH_MASK ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void fill_cfd_frame(struct fsl_re_cmpnd_frame *cf, u8 index,
      size_t length, dma_addr_t addr, bool final)
{
 u32 efrl = length & FSL_RE_CF_LENGTH_MASK;

 efrl |= final << FSL_RE_CF_FINAL_SHIFT;
 cf[index].efrl32 = efrl;
 cf[index].addr_high = upper_32_bits(addr);
 cf[index].addr_low = lower_32_bits(addr);
}
