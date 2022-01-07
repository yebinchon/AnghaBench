
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int tx_ring_size; } ;



void ishtp_set_tx_ring_size(struct ishtp_cl *cl, int size)
{
 cl->tx_ring_size = size;
}
