
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;


 int QM_MB_BUSY_SHIFT ;
 scalar_t__ QM_MB_CMD_SEND_BASE ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int qm_wait_mb_ready(struct hisi_qm *qm)
{
 u32 val;

 return readl_relaxed_poll_timeout(qm->io_base + QM_MB_CMD_SEND_BASE,
       val, !((val >> QM_MB_BUSY_SHIFT) &
       0x1), 10, 1000);
}
