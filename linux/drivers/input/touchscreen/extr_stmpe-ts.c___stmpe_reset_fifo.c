
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;


 int STMPE_FIFO_STA_RESET ;
 int STMPE_REG_FIFO_STA ;
 int stmpe_set_bits (struct stmpe*,int ,int ,int ) ;

__attribute__((used)) static int __stmpe_reset_fifo(struct stmpe *stmpe)
{
 int ret;

 ret = stmpe_set_bits(stmpe, STMPE_REG_FIFO_STA,
   STMPE_FIFO_STA_RESET, STMPE_FIFO_STA_RESET);
 if (ret)
  return ret;

 return stmpe_set_bits(stmpe, STMPE_REG_FIFO_STA,
   STMPE_FIFO_STA_RESET, 0);
}
