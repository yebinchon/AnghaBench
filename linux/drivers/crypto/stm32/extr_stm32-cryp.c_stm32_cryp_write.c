
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_cryp {scalar_t__ regs; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void stm32_cryp_write(struct stm32_cryp *cryp, u32 ofst, u32 val)
{
 writel_relaxed(val, cryp->regs + ofst);
}
