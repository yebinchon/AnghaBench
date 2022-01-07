
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pdc_state {int rxout; int txout; int pdc_requests; TYPE_2__* txregs_64; TYPE_1__* rxregs_64; } ;
struct TYPE_4__ {int ptr; } ;
struct TYPE_3__ {int ptr; } ;


 int PDC_SUCCESS ;
 int iowrite32 (int,int *) ;
 int wmb () ;

__attribute__((used)) static int pdc_tx_list_final(struct pdc_state *pdcs)
{




 wmb();
 iowrite32(pdcs->rxout << 4, &pdcs->rxregs_64->ptr);
 iowrite32(pdcs->txout << 4, &pdcs->txregs_64->ptr);
 pdcs->pdc_requests++;

 return PDC_SUCCESS;
}
