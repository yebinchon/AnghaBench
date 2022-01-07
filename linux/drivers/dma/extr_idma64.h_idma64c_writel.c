
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idma64_chan {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void idma64c_writel(struct idma64_chan *idma64c, int offset,
      u32 value)
{
 writel(value, idma64c->regs + offset);
}
