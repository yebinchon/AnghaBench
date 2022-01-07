
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct idma64_chan {scalar_t__ regs; } ;


 int lo_hi_readq (scalar_t__) ;

__attribute__((used)) static inline u64 idma64c_readq(struct idma64_chan *idma64c, int offset)
{
 return lo_hi_readq(idma64c->regs + offset);
}
