
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int tx_ring_free_size; } ;



int ishtp_cl_get_tx_free_rings(struct ishtp_cl *cl)
{
 return cl->tx_ring_free_size;
}
