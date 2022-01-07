
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_mr {int dummy; } ;
struct hns_roce_mr {int npages; int * pbl_buf; } ;


 struct hns_roce_mr* to_hr_mr (struct ib_mr*) ;

__attribute__((used)) static int hns_roce_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct hns_roce_mr *mr = to_hr_mr(ibmr);

 mr->pbl_buf[mr->npages++] = addr;

 return 0;
}
