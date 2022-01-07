
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int DC_MEM_GLOBAL_PWR_REQ_CNTL ;
 int DC_MEM_GLOBAL_PWR_REQ_DIS ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void dce_disable_sram_shut_down(struct dce_hwseq *hws)
{
 if (REG(DC_MEM_GLOBAL_PWR_REQ_CNTL))
  REG_UPDATE(DC_MEM_GLOBAL_PWR_REQ_CNTL,
    DC_MEM_GLOBAL_PWR_REQ_DIS, 1);
}
