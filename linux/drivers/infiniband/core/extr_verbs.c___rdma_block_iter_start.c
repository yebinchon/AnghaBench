
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ib_block_iter {unsigned int __sg_nents; int __pg_bit; struct scatterlist* __sg; } ;


 int __fls (unsigned long) ;
 int memset (struct ib_block_iter*,int ,int) ;

void __rdma_block_iter_start(struct ib_block_iter *biter,
        struct scatterlist *sglist, unsigned int nents,
        unsigned long pgsz)
{
 memset(biter, 0, sizeof(struct ib_block_iter));
 biter->__sg = sglist;
 biter->__sg_nents = nents;


 biter->__pg_bit = __fls(pgsz);
}
