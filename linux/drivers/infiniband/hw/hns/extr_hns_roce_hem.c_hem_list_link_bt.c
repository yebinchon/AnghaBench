
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hns_roce_dev {int dummy; } ;



__attribute__((used)) static void hem_list_link_bt(struct hns_roce_dev *hr_dev, void *base_addr,
        u64 table_addr)
{
 *(u64 *)(base_addr) = table_addr;
}
