
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdc_state {int last_rx_curr; TYPE_1__* rxregs_64; } ;
struct TYPE_2__ {int status0; } ;


 int CRYPTO_D64_RS0_CD_MASK ;
 int PDC_SUCCESS ;
 int RING_ENTRY_SIZE ;
 int ioread32 (int *) ;
 int pdc_receive_one (struct pdc_state*) ;

__attribute__((used)) static int
pdc_receive(struct pdc_state *pdcs)
{
 int rx_status;


 pdcs->last_rx_curr =
     (ioread32(&pdcs->rxregs_64->status0) &
      CRYPTO_D64_RS0_CD_MASK) / RING_ENTRY_SIZE;

 do {

  rx_status = pdc_receive_one(pdcs);
 } while (rx_status == PDC_SUCCESS);

 return 0;
}
