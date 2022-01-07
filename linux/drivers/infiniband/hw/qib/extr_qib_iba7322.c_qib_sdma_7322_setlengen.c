
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {unsigned long long sdma_descq_cnt; } ;


 unsigned long long QIB_7322_SendDmaLenGen_0_Generation_MSB ;
 int krp_senddmalengen ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,unsigned long long) ;

__attribute__((used)) static void qib_sdma_7322_setlengen(struct qib_pportdata *ppd)
{





 qib_write_kreg_port(ppd, krp_senddmalengen, ppd->sdma_descq_cnt);
 qib_write_kreg_port(ppd, krp_senddmalengen,
       ppd->sdma_descq_cnt |
       (1ULL << QIB_7322_SendDmaLenGen_0_Generation_MSB));
}
