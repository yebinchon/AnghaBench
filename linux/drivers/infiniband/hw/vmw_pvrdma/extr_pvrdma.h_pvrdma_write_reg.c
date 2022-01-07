
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pvrdma_dev {scalar_t__ regs; } ;


 int cpu_to_le32 (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pvrdma_write_reg(struct pvrdma_dev *dev, u32 reg, u32 val)
{
 writel(cpu_to_le32(val), dev->regs + reg);
}
