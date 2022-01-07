
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcom_task {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int rx_ipr; int rx_initiator; } ;


 unsigned int MPC52xx_PSC_MAXNUM ;
 struct bcom_task* bcom_gen_bd_rx_init (int,int ,int ,int ,int) ;
 TYPE_1__* bcom_psc_params ;

struct bcom_task * bcom_psc_gen_bd_rx_init(unsigned psc_num, int queue_len,
        phys_addr_t fifo, int maxbufsize)
{
 if (psc_num >= MPC52xx_PSC_MAXNUM)
  return ((void*)0);

 return bcom_gen_bd_rx_init(queue_len, fifo,
       bcom_psc_params[psc_num].rx_initiator,
       bcom_psc_params[psc_num].rx_ipr,
       maxbufsize);
}
