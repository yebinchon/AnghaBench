
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_comp_vectors; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
typedef int __le32 ;


 int CEQ_REG_OFFSET ;
 int ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S ;
 int ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S ;
 scalar_t__ ROCEE_CAEP_AE_MASK_REG ;
 scalar_t__ ROCEE_CAEP_CE_IRQ_MASK_0_REG ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,scalar_t__) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,scalar_t__,int) ;

__attribute__((used)) static void hns_roce_v1_int_mask_enable(struct hns_roce_dev *hr_dev)
{
 u32 aemask_val;
 int masken = 0;
 __le32 tmp;
 int i;


 aemask_val = roce_read(hr_dev, ROCEE_CAEP_AE_MASK_REG);
 tmp = cpu_to_le32(aemask_val);
 roce_set_bit(tmp, ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S,
       masken);
 roce_set_bit(tmp, ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S, masken);
 aemask_val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_CAEP_AE_MASK_REG, aemask_val);


 for (i = 0; i < hr_dev->caps.num_comp_vectors; i++) {

  roce_write(hr_dev, ROCEE_CAEP_CE_IRQ_MASK_0_REG +
      i * CEQ_REG_OFFSET, masken);
 }
}
