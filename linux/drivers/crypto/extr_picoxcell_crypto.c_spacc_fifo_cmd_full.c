
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spacc_engine {scalar_t__ regs; } ;


 int SPA_FIFO_CMD_FULL ;
 scalar_t__ SPA_FIFO_STAT_REG_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int spacc_fifo_cmd_full(struct spacc_engine *engine)
{
 u32 fifo_stat = readl(engine->regs + SPA_FIFO_STAT_REG_OFFSET);

 return fifo_stat & SPA_FIFO_CMD_FULL;
}
