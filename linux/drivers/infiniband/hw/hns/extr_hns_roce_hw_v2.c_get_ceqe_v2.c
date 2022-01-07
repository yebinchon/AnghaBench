
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_eq {int eqe_buf_pg_sz; int entries; TYPE_1__* buf_list; } ;
struct hns_roce_ceqe {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int HNS_ROCE_CEQ_ENTRY_SIZE ;
 int PAGE_SHIFT ;

__attribute__((used)) static struct hns_roce_ceqe *get_ceqe_v2(struct hns_roce_eq *eq, u32 entry)
{
 u32 buf_chk_sz;
 unsigned long off;

 buf_chk_sz = 1 << (eq->eqe_buf_pg_sz + PAGE_SHIFT);
 off = (entry & (eq->entries - 1)) * HNS_ROCE_CEQ_ENTRY_SIZE;

 return (struct hns_roce_ceqe *)((char *)(eq->buf_list->buf) +
  off % buf_chk_sz);
}
