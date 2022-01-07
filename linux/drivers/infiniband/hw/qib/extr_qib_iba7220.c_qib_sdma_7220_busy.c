
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {int dd; } ;


 int AbortInProg ;
 int InternalSDmaEnable ;
 int SYM_MASK (int ,int ) ;
 int ScbEmpty ;
 int ScoreBoardDrainInProg ;
 int SendDmaStatus ;
 int kr_senddmastatus ;
 int qib_read_kreg64 (int ,int ) ;

__attribute__((used)) static int qib_sdma_7220_busy(struct qib_pportdata *ppd)
{
 u64 hwstatus = qib_read_kreg64(ppd->dd, kr_senddmastatus);

 return (hwstatus & SYM_MASK(SendDmaStatus, ScoreBoardDrainInProg)) ||
        (hwstatus & SYM_MASK(SendDmaStatus, AbortInProg)) ||
        (hwstatus & SYM_MASK(SendDmaStatus, InternalSDmaEnable)) ||
        !(hwstatus & SYM_MASK(SendDmaStatus, ScbEmpty));
}
