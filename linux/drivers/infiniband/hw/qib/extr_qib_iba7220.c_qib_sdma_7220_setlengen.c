
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {unsigned long long sdma_descq_cnt; int dd; } ;


 unsigned long long QIB_7220_SendDmaLenGen_Generation_MSB ;
 int kr_senddmalengen ;
 int qib_write_kreg (int ,int ,unsigned long long) ;

__attribute__((used)) static void qib_sdma_7220_setlengen(struct qib_pportdata *ppd)
{





 qib_write_kreg(ppd->dd, kr_senddmalengen, ppd->sdma_descq_cnt);
 qib_write_kreg(ppd->dd, kr_senddmalengen,
         ppd->sdma_descq_cnt |
         (1ULL << QIB_7220_SendDmaLenGen_Generation_MSB));
}
