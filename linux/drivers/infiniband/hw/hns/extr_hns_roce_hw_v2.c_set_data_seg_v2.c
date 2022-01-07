
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {int length; int addr; int lkey; } ;
struct hns_roce_v2_wqe_data_seg {void* len; int addr; void* lkey; } ;


 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void set_data_seg_v2(struct hns_roce_v2_wqe_data_seg *dseg,
       struct ib_sge *sg)
{
 dseg->lkey = cpu_to_le32(sg->lkey);
 dseg->addr = cpu_to_le64(sg->addr);
 dseg->len = cpu_to_le32(sg->length);
}
