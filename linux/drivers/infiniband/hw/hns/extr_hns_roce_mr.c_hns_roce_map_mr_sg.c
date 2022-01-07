
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ib_mr {int dummy; } ;
struct hns_roce_mr {scalar_t__ npages; } ;


 int hns_roce_set_page ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 struct hns_roce_mr* to_hr_mr (struct ib_mr*) ;

int hns_roce_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
         unsigned int *sg_offset)
{
 struct hns_roce_mr *mr = to_hr_mr(ibmr);

 mr->npages = 0;

 return ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, hns_roce_set_page);
}
