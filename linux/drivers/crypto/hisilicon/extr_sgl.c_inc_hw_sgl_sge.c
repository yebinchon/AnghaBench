
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_acc_hw_sgl {int entry_sum_in_sgl; } ;



__attribute__((used)) static void inc_hw_sgl_sge(struct hisi_acc_hw_sgl *hw_sgl)
{
 hw_sgl->entry_sum_in_sgl++;
}
