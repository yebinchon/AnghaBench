
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_sq {int memsize; int dma_addr; } ;
struct c4iw_rdev {int dummy; } ;


 int c4iw_ocqp_pool_free (struct c4iw_rdev*,int ,int ) ;

__attribute__((used)) static void dealloc_oc_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
 c4iw_ocqp_pool_free(rdev, sq->dma_addr, sq->memsize);
}
