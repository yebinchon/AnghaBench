
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hr_buf; } ;
struct hns_roce_cq {TYPE_1__ hr_buf; } ;


 int HNS_ROCE_V1_CQE_ENTRY_SIZE ;
 void* hns_roce_buf_offset (int *,int) ;

__attribute__((used)) static void *get_cqe(struct hns_roce_cq *hr_cq, int n)
{
 return hns_roce_buf_offset(&hr_cq->hr_buf.hr_buf,
       n * HNS_ROCE_V1_CQE_ENTRY_SIZE);
}
