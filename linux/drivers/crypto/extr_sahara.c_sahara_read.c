
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sahara_dev {scalar_t__ regs_base; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int sahara_read(struct sahara_dev *dev, u32 reg)
{
 return readl(dev->regs_base + reg);
}
