
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sahara_dev {scalar_t__ regs_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void sahara_write(struct sahara_dev *dev, u32 data, u32 reg)
{
 writel(data, dev->regs_base + reg);
}
