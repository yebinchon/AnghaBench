
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_cq {int* set_ci_db; } ;



__attribute__((used)) static void hns_roce_v2_cq_set_ci(struct hns_roce_cq *hr_cq, u32 cons_index)
{
 *hr_cq->set_ci_db = cons_index & 0xffffff;
}
