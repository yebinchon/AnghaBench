
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_op; } ;
struct qib_pportdata {TYPE_1__ sdma_state; scalar_t__* sdma_head_dma; } ;


 int QIB_SDMA_SENDCTRL_OP_CLEANUP ;
 int QIB_SENDCTRL_FLUSH ;
 int qib_7322_sdma_sendctrl (struct qib_pportdata*,int) ;
 int qib_sdma_7322_setlengen (struct qib_pportdata*) ;
 int qib_sdma_update_7322_tail (struct qib_pportdata*,int ) ;
 int sendctrl_7322_mod (struct qib_pportdata*,int ) ;

__attribute__((used)) static void qib_7322_sdma_hw_start_up(struct qib_pportdata *ppd)
{






 sendctrl_7322_mod(ppd, QIB_SENDCTRL_FLUSH);

 qib_sdma_7322_setlengen(ppd);
 qib_sdma_update_7322_tail(ppd, 0);
 ppd->sdma_head_dma[0] = 0;
 qib_7322_sdma_sendctrl(ppd,
  ppd->sdma_state.current_op | QIB_SDMA_SENDCTRL_OP_CLEANUP);
}
