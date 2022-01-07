
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gart_device {scalar_t__ regs; } ;


 scalar_t__ GART_ENTRY_ADDR ;
 scalar_t__ GART_ENTRY_DATA ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void gart_set_pte(struct gart_device *gart,
    unsigned long iova, unsigned long pte)
{
 writel_relaxed(iova, gart->regs + GART_ENTRY_ADDR);
 writel_relaxed(pte, gart->regs + GART_ENTRY_DATA);
}
