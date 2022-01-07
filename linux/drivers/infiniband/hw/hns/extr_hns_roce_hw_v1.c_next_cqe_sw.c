
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_cqe {int dummy; } ;
struct hns_roce_cq {int cons_index; } ;


 struct hns_roce_cqe* get_sw_cqe (struct hns_roce_cq*,int ) ;

__attribute__((used)) static struct hns_roce_cqe *next_cqe_sw(struct hns_roce_cq *hr_cq)
{
 return get_sw_cqe(hr_cq, hr_cq->cons_index);
}
