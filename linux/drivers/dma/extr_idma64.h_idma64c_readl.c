
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idma64_chan {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 idma64c_readl(struct idma64_chan *idma64c, int offset)
{
 return readl(idma64c->regs + offset);
}
