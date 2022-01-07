
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qxl_ring {int n_elements; TYPE_2__* ring; } ;
struct TYPE_3__ {int notify_on_prod; } ;
struct TYPE_4__ {TYPE_1__ header; } ;



void qxl_ring_init_hdr(struct qxl_ring *ring)
{
 ring->ring->header.notify_on_prod = ring->n_elements;
}
