
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gart_device {scalar_t__ regs; } ;


 scalar_t__ GART_ENTRY_ADDR ;
 scalar_t__ GART_ENTRY_DATA ;
 unsigned long readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline unsigned long gart_read_pte(struct gart_device *gart,
       unsigned long iova)
{
 unsigned long pte;

 writel_relaxed(iova, gart->regs + GART_ENTRY_ADDR);
 pte = readl_relaxed(gart->regs + GART_ENTRY_DATA);

 return pte;
}
