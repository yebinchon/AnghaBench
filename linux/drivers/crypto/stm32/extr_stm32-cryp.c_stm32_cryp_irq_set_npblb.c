
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {int total_in; int authsize; int hw_blocksize; } ;


 int CRYP_CR ;
 int CR_CRYPEN ;
 int CR_NBPBL_SHIFT ;
 scalar_t__ is_decrypt (struct stm32_cryp*) ;
 int stm32_cryp_read (struct stm32_cryp*,int ) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int) ;

__attribute__((used)) static void stm32_cryp_irq_set_npblb(struct stm32_cryp *cryp)
{
 u32 cfg, payload_bytes;


 cfg = stm32_cryp_read(cryp, CRYP_CR);
 cfg &= ~CR_CRYPEN;
 stm32_cryp_write(cryp, CRYP_CR, cfg);

 payload_bytes = is_decrypt(cryp) ? cryp->total_in - cryp->authsize :
        cryp->total_in;
 cfg |= (cryp->hw_blocksize - payload_bytes) << CR_NBPBL_SHIFT;
 cfg |= CR_CRYPEN;
 stm32_cryp_write(cryp, CRYP_CR, cfg);
}
