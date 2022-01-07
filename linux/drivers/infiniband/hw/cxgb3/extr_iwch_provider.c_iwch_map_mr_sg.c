
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct iwch_mr {scalar_t__ npages; } ;
struct ib_mr {int dummy; } ;


 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 int iwch_set_page ;
 struct iwch_mr* to_iwch_mr (struct ib_mr*) ;

__attribute__((used)) static int iwch_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg,
     int sg_nents, unsigned int *sg_offset)
{
 struct iwch_mr *mhp = to_iwch_mr(ibmr);

 mhp->npages = 0;

 return ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, iwch_set_page);
}
