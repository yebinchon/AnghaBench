
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stm32_cryp {size_t authsize; int hw_blocksize; size_t total_out; int total_in; int out_sg; } ;


 int CRYP_DOUT ;
 int _walked_out ;
 scalar_t__ is_ccm (struct stm32_cryp*) ;
 scalar_t__ is_encrypt (struct stm32_cryp*) ;
 scalar_t__ is_gcm (struct stm32_cryp*) ;
 scalar_t__ likely (int) ;
 int * sg_virt (int ) ;
 int * stm32_cryp_next_out (struct stm32_cryp*,int *,int) ;
 int stm32_cryp_read (struct stm32_cryp*,int ) ;

__attribute__((used)) static bool stm32_cryp_irq_read_data(struct stm32_cryp *cryp)
{
 unsigned int i, j;
 u32 d32, *dst;
 u8 *d8;
 size_t tag_size;


 if (is_encrypt(cryp) && (is_gcm(cryp) || is_ccm(cryp)))
  tag_size = cryp->authsize;
 else
  tag_size = 0;

 dst = sg_virt(cryp->out_sg) + _walked_out;

 for (i = 0; i < cryp->hw_blocksize / sizeof(u32); i++) {
  if (likely(cryp->total_out - tag_size >= sizeof(u32))) {

   *dst = stm32_cryp_read(cryp, CRYP_DOUT);

   dst = stm32_cryp_next_out(cryp, dst, sizeof(u32));
   cryp->total_out -= sizeof(u32);
  } else if (cryp->total_out == tag_size) {

   d32 = stm32_cryp_read(cryp, CRYP_DOUT);
  } else {

   d32 = stm32_cryp_read(cryp, CRYP_DOUT);
   d8 = (u8 *)&d32;

   for (j = 0; j < cryp->total_out - tag_size; j++) {
    *((u8 *)dst) = *(d8++);
    dst = stm32_cryp_next_out(cryp, dst, 1);
   }
   cryp->total_out = tag_size;
  }
 }

 return !(cryp->total_out - tag_size) || !cryp->total_in;
}
