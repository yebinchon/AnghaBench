
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct smc_firmware_header_v2_0 {int ppt_size_bytes; int ppt_offset_bytes; } ;
struct TYPE_4__ {TYPE_1__* fw; } ;
struct amdgpu_device {TYPE_2__ pm; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int smu_v11_0_set_pptable_v2_0(struct smu_context *smu, void **table, uint32_t *size)
{
 struct amdgpu_device *adev = smu->adev;
 uint32_t ppt_offset_bytes;
 const struct smc_firmware_header_v2_0 *v2;

 v2 = (const struct smc_firmware_header_v2_0 *) adev->pm.fw->data;

 ppt_offset_bytes = le32_to_cpu(v2->ppt_offset_bytes);
 *size = le32_to_cpu(v2->ppt_size_bytes);
 *table = (uint8_t *)v2 + ppt_offset_bytes;

 return 0;
}
