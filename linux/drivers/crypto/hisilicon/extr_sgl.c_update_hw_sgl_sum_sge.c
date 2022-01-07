
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hisi_acc_hw_sgl {int entry_sum_in_chain; } ;



__attribute__((used)) static void update_hw_sgl_sum_sge(struct hisi_acc_hw_sgl *hw_sgl, u16 sum)
{
 hw_sgl->entry_sum_in_chain = sum;
}
