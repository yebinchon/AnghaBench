
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct adf_hw_device_data {int tx_rings_mask; } ;
struct adf_etr_ring_data {int inflights; } ;
struct adf_etr_bank_data {int ring_mask; struct adf_etr_ring_data* rings; struct adf_accel_dev* accel_dev; } ;
struct adf_accel_dev {struct adf_hw_device_data* hw_device; } ;


 size_t ADF_ETR_MAX_RINGS_PER_BANK ;
 int adf_bank_debugfs_rm (struct adf_etr_bank_data*) ;
 int adf_cleanup_ring (struct adf_etr_ring_data*) ;
 int kfree (int ) ;
 int memset (struct adf_etr_bank_data*,int ,int) ;

__attribute__((used)) static void cleanup_bank(struct adf_etr_bank_data *bank)
{
 uint32_t i;

 for (i = 0; i < ADF_ETR_MAX_RINGS_PER_BANK; i++) {
  struct adf_accel_dev *accel_dev = bank->accel_dev;
  struct adf_hw_device_data *hw_data = accel_dev->hw_device;
  struct adf_etr_ring_data *ring = &bank->rings[i];

  if (bank->ring_mask & (1 << i))
   adf_cleanup_ring(ring);

  if (hw_data->tx_rings_mask & (1 << i))
   kfree(ring->inflights);
 }
 adf_bank_debugfs_rm(bank);
 memset(bank, 0, sizeof(*bank));
}
