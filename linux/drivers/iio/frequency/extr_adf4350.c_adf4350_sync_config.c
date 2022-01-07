
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct adf4350_state {int* regs_hw; int* regs; TYPE_1__* spi; int val; } ;
struct TYPE_2__ {int dev; } ;


 int ADF4350_REG0 ;


 int ADF4350_REG5 ;
 int cpu_to_be32 (int) ;
 int dev_dbg (int *,char*,int,int) ;
 int spi_write (TYPE_1__*,int *,int) ;

__attribute__((used)) static int adf4350_sync_config(struct adf4350_state *st)
{
 int ret, i, doublebuf = 0;

 for (i = ADF4350_REG5; i >= ADF4350_REG0; i--) {
  if ((st->regs_hw[i] != st->regs[i]) ||
   ((i == ADF4350_REG0) && doublebuf)) {
   switch (i) {
   case 129:
   case 128:
    doublebuf = 1;
    break;
   }

   st->val = cpu_to_be32(st->regs[i] | i);
   ret = spi_write(st->spi, &st->val, 4);
   if (ret < 0)
    return ret;
   st->regs_hw[i] = st->regs[i];
   dev_dbg(&st->spi->dev, "[%d] 0x%X\n",
    i, (u32)st->regs[i] | i);
  }
 }
 return 0;
}
