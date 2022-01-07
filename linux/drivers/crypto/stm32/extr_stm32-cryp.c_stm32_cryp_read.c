
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_cryp {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 stm32_cryp_read(struct stm32_cryp *cryp, u32 ofst)
{
 return readl_relaxed(cryp->regs + ofst);
}
