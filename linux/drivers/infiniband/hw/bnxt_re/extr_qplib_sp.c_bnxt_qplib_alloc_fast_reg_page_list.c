
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_res {int pdev; } ;
struct TYPE_2__ {int max_elements; } ;
struct bnxt_qplib_frpl {int max_pg_ptrs; TYPE_1__ hwq; } ;


 int ENOMEM ;
 int HWQ_TYPE_CTX ;
 int MAX_PBL_LVL_1_PGS ;
 int MAX_PBL_LVL_1_PGS_SHIFT ;
 int PAGE_SIZE ;
 int bnxt_qplib_alloc_init_hwq (int ,TYPE_1__*,int *,int*,int ,int ,int ,int ) ;
 int roundup_pow_of_two (int) ;

int bnxt_qplib_alloc_fast_reg_page_list(struct bnxt_qplib_res *res,
     struct bnxt_qplib_frpl *frpl,
     int max_pg_ptrs)
{
 int pg_ptrs, pages, rc;


 pg_ptrs = roundup_pow_of_two(max_pg_ptrs);
 pages = pg_ptrs >> MAX_PBL_LVL_1_PGS_SHIFT;
 if (!pages)
  pages++;

 if (pages > MAX_PBL_LVL_1_PGS)
  return -ENOMEM;

 frpl->hwq.max_elements = pages;
 rc = bnxt_qplib_alloc_init_hwq(res->pdev, &frpl->hwq, ((void*)0),
           &frpl->hwq.max_elements, PAGE_SIZE, 0,
           PAGE_SIZE, HWQ_TYPE_CTX);
 if (!rc)
  frpl->max_pg_ptrs = pg_ptrs;

 return rc;
}
