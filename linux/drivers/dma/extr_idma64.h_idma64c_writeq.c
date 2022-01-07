
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct idma64_chan {scalar_t__ regs; } ;


 int lo_hi_writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void idma64c_writeq(struct idma64_chan *idma64c, int offset,
      u64 value)
{
 lo_hi_writeq(value, idma64c->regs + offset);
}
