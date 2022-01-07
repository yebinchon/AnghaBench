
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hns_roce_eq {int entries; TYPE_1__* buf_list; } ;
struct hns_roce_aeqe {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int HNS_ROCE_AEQ_ENTRY_SIZE ;
 unsigned long HNS_ROCE_BA_SIZE ;

__attribute__((used)) static struct hns_roce_aeqe *get_aeqe_v1(struct hns_roce_eq *eq, u32 entry)
{
 unsigned long off = (entry & (eq->entries - 1)) *
        HNS_ROCE_AEQ_ENTRY_SIZE;

 return (struct hns_roce_aeqe *)((u8 *)
  (eq->buf_list[off / HNS_ROCE_BA_SIZE].buf) +
  off % HNS_ROCE_BA_SIZE);
}
