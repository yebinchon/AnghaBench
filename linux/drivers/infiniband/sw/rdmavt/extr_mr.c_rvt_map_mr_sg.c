
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scatterlist {int dummy; } ;
struct TYPE_6__ {size_t length; TYPE_2__** map; scalar_t__ offset; scalar_t__ iova; scalar_t__ user_base; int page_shift; } ;
struct rvt_mr {TYPE_3__ mr; } ;
struct ib_mr {scalar_t__ length; scalar_t__ iova; } ;
struct TYPE_5__ {TYPE_1__* segs; } ;
struct TYPE_4__ {scalar_t__ vaddr; } ;


 int PAGE_SHIFT ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 int rvt_set_page ;
 struct rvt_mr* to_imr (struct ib_mr*) ;
 int trace_rvt_map_mr_sg (struct ib_mr*,int,unsigned int*) ;

int rvt_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg,
    int sg_nents, unsigned int *sg_offset)
{
 struct rvt_mr *mr = to_imr(ibmr);
 int ret;

 mr->mr.length = 0;
 mr->mr.page_shift = PAGE_SHIFT;
 ret = ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, rvt_set_page);
 mr->mr.user_base = ibmr->iova;
 mr->mr.iova = ibmr->iova;
 mr->mr.offset = ibmr->iova - (u64)mr->mr.map[0]->segs[0].vaddr;
 mr->mr.length = (size_t)ibmr->length;
 trace_rvt_map_mr_sg(ibmr, sg_nents, sg_offset);
 return ret;
}
