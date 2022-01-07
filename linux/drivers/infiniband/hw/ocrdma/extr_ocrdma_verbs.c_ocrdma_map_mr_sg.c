
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ocrdma_mr {scalar_t__ npages; } ;
struct ib_mr {int dummy; } ;


 struct ocrdma_mr* get_ocrdma_mr (struct ib_mr*) ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 int ocrdma_set_page ;

int ocrdma_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
       unsigned int *sg_offset)
{
 struct ocrdma_mr *mr = get_ocrdma_mr(ibmr);

 mr->npages = 0;

 return ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, ocrdma_set_page);
}
