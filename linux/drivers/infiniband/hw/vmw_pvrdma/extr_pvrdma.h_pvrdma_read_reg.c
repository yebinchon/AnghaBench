
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pvrdma_dev {scalar_t__ regs; } ;


 scalar_t__ le32_to_cpu (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pvrdma_read_reg(struct pvrdma_dev *dev, u32 reg)
{
 return le32_to_cpu(readl(dev->regs + reg));
}
