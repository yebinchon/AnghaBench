
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct smc_soft_pptable_entry {int ppt_size_bytes; int ppt_offset_bytes; int id; } ;
struct smc_firmware_header_v2_1 {int pptable_count; int pptable_entry_offset; } ;
struct TYPE_4__ {TYPE_1__* fw; } ;
struct amdgpu_device {TYPE_2__ pm; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int EINVAL ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int smu_v11_0_set_pptable_v2_1(struct smu_context *smu, void **table,
          uint32_t *size, uint32_t pptable_id)
{
 struct amdgpu_device *adev = smu->adev;
 const struct smc_firmware_header_v2_1 *v2_1;
 struct smc_soft_pptable_entry *entries;
 uint32_t pptable_count = 0;
 int i = 0;

 v2_1 = (const struct smc_firmware_header_v2_1 *) adev->pm.fw->data;
 entries = (struct smc_soft_pptable_entry *)
  ((uint8_t *)v2_1 + le32_to_cpu(v2_1->pptable_entry_offset));
 pptable_count = le32_to_cpu(v2_1->pptable_count);
 for (i = 0; i < pptable_count; i++) {
  if (le32_to_cpu(entries[i].id) == pptable_id) {
   *table = ((uint8_t *)v2_1 + le32_to_cpu(entries[i].ppt_offset_bytes));
   *size = le32_to_cpu(entries[i].ppt_size_bytes);
   break;
  }
 }

 if (i == pptable_count)
  return -EINVAL;

 return 0;
}
