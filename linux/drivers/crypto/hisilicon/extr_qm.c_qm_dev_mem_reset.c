
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;


 int BIT (int ) ;
 scalar_t__ QM_MEM_INIT_DONE ;
 scalar_t__ QM_MEM_START_INIT ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int qm_dev_mem_reset(struct hisi_qm *qm)
{
 u32 val;

 writel(0x1, qm->io_base + QM_MEM_START_INIT);
 return readl_relaxed_poll_timeout(qm->io_base + QM_MEM_INIT_DONE, val,
       val & BIT(0), 10, 1000);
}
