
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_ring {int dummy; } ;


 int kfree (struct qxl_ring*) ;

void qxl_ring_free(struct qxl_ring *ring)
{
 kfree(ring);
}
