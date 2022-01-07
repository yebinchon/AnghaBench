
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_res {int pdev; } ;
struct bnxt_qplib_frpl {int hwq; } ;


 int bnxt_qplib_free_hwq (int ,int *) ;

int bnxt_qplib_free_fast_reg_page_list(struct bnxt_qplib_res *res,
           struct bnxt_qplib_frpl *frpl)
{
 bnxt_qplib_free_hwq(res->pdev, &frpl->hwq);
 return 0;
}
