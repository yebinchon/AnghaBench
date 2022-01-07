
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ras_err_data {int dummy; } ;
struct amdgpu_iv_entry {int src_id; int client_id; } ;
struct TYPE_2__ {int dev; } ;
struct amdgpu_device {TYPE_1__ kfd; } ;


 int AMDGPU_RAS_SUCCESS ;


 int amdgpu_ras_reset_gpu (struct amdgpu_device*,int ) ;
 int kgd2kfd_set_sram_ecc_flag (int ) ;
 int sdma_v4_0_irq_id_to_seq (int ) ;

__attribute__((used)) static int sdma_v4_0_process_ras_data_cb(struct amdgpu_device *adev,
  struct ras_err_data *err_data,
  struct amdgpu_iv_entry *entry)
{
 uint32_t err_source;
 int instance;

 instance = sdma_v4_0_irq_id_to_seq(entry->client_id);
 if (instance < 0)
  return 0;

 switch (entry->src_id) {
 case 128:
  err_source = 0;
  break;
 case 129:
  err_source = 1;
  break;
 default:
  return 0;
 }

 kgd2kfd_set_sram_ecc_flag(adev->kfd.dev);

 amdgpu_ras_reset_gpu(adev, 0);

 return AMDGPU_RAS_SUCCESS;
}
