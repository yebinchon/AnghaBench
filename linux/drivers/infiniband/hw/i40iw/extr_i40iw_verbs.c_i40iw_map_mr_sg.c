
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ib_mr {int dummy; } ;
struct i40iw_mr {scalar_t__ npages; } ;


 int i40iw_set_page ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 struct i40iw_mr* to_iwmr (struct ib_mr*) ;

__attribute__((used)) static int i40iw_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg,
      int sg_nents, unsigned int *sg_offset)
{
 struct i40iw_mr *iwmr = to_iwmr(ibmr);

 iwmr->npages = 0;
 return ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, i40iw_set_page);
}
