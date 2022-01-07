
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_pportdata {int sdma_descq_tail; } ;


 int krp_senddmatail ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void qib_sdma_update_7322_tail(struct qib_pportdata *ppd, u16 tail)
{

 wmb();
 ppd->sdma_descq_tail = tail;
 qib_write_kreg_port(ppd, krp_senddmatail, tail);
}
