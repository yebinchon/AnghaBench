
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fdt; int var; int ctx; int tdt; TYPE_1__* regs; } ;
struct TYPE_3__ {int taskBar; int * ipr; int * tcr; } ;


 int BCOM_MAX_TASKS ;
 TYPE_2__* bcom_eng ;
 int bcom_sram_free (int ) ;
 int out_8 (int *,int ) ;
 int out_be16 (int *,int ) ;
 int out_be32 (int *,unsigned long) ;

__attribute__((used)) static void
bcom_engine_cleanup(void)
{
 int task;


 for (task=0; task<BCOM_MAX_TASKS; task++)
 {
  out_be16(&bcom_eng->regs->tcr[task], 0);
  out_8(&bcom_eng->regs->ipr[task], 0);
 }

 out_be32(&bcom_eng->regs->taskBar, 0ul);


 bcom_sram_free(bcom_eng->tdt);
 bcom_sram_free(bcom_eng->ctx);
 bcom_sram_free(bcom_eng->var);
 bcom_sram_free(bcom_eng->fdt);
}
