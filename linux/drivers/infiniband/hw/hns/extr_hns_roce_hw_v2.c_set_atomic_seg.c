
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcode; } ;
struct ib_atomic_wr {int compare_add; int swap; TYPE_1__ wr; } ;
struct hns_roce_wqe_atomic_seg {void* cmp_data; void* fetchadd_swap_data; } ;


 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ;
 void* cpu_to_le64 (int ) ;

__attribute__((used)) static void set_atomic_seg(struct hns_roce_wqe_atomic_seg *aseg,
      const struct ib_atomic_wr *wr)
{
 if (wr->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP) {
  aseg->fetchadd_swap_data = cpu_to_le64(wr->swap);
  aseg->cmp_data = cpu_to_le64(wr->compare_add);
 } else {
  aseg->fetchadd_swap_data = cpu_to_le64(wr->compare_add);
  aseg->cmp_data = 0;
 }
}
