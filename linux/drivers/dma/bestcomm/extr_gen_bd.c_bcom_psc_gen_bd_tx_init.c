
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcom_task {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int tx_ipr; int tx_initiator; } ;


 struct bcom_task* bcom_gen_bd_tx_init (int,int ,int ,int ) ;
 TYPE_1__* bcom_psc_params ;

struct bcom_task *
bcom_psc_gen_bd_tx_init(unsigned psc_num, int queue_len, phys_addr_t fifo)
{
 struct psc;
 return bcom_gen_bd_tx_init(queue_len, fifo,
       bcom_psc_params[psc_num].tx_initiator,
       bcom_psc_params[psc_num].tx_ipr);
}
