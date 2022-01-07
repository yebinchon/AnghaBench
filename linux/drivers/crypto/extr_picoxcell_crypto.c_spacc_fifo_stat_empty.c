
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_engine {scalar_t__ regs; } ;


 int SPA_FIFO_STAT_EMPTY ;
 scalar_t__ SPA_FIFO_STAT_REG_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int spacc_fifo_stat_empty(struct spacc_engine *engine)
{
 return readl(engine->regs + SPA_FIFO_STAT_REG_OFFSET) &
  SPA_FIFO_STAT_EMPTY;
}
