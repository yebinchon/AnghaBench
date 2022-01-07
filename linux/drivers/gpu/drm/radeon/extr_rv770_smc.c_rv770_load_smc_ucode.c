
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct radeon_device {int family; TYPE_1__* smc_fw; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int BARTS_SMC_INT_VECTOR_SIZE ;
 int BARTS_SMC_INT_VECTOR_START ;
 int BARTS_SMC_UCODE_SIZE ;
 int BARTS_SMC_UCODE_START ;
 int BUG () ;
 int CAICOS_SMC_INT_VECTOR_SIZE ;
 int CAICOS_SMC_INT_VECTOR_START ;
 int CAICOS_SMC_UCODE_SIZE ;
 int CAICOS_SMC_UCODE_START ;
 int CAYMAN_SMC_INT_VECTOR_SIZE ;
 int CAYMAN_SMC_INT_VECTOR_START ;
 int CAYMAN_SMC_UCODE_SIZE ;
 int CAYMAN_SMC_UCODE_START ;
 int CEDAR_SMC_INT_VECTOR_SIZE ;
 int CEDAR_SMC_INT_VECTOR_START ;
 int CEDAR_SMC_UCODE_SIZE ;
 int CEDAR_SMC_UCODE_START ;
 int CYPRESS_SMC_INT_VECTOR_SIZE ;
 int CYPRESS_SMC_INT_VECTOR_START ;
 int CYPRESS_SMC_UCODE_SIZE ;
 int CYPRESS_SMC_UCODE_START ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int JUNIPER_SMC_INT_VECTOR_SIZE ;
 int JUNIPER_SMC_INT_VECTOR_START ;
 int JUNIPER_SMC_UCODE_SIZE ;
 int JUNIPER_SMC_UCODE_START ;
 int REDWOOD_SMC_INT_VECTOR_SIZE ;
 int REDWOOD_SMC_INT_VECTOR_START ;
 int REDWOOD_SMC_UCODE_SIZE ;
 int REDWOOD_SMC_UCODE_START ;
 int RV710_SMC_INT_VECTOR_SIZE ;
 int RV710_SMC_INT_VECTOR_START ;
 int RV710_SMC_UCODE_SIZE ;
 int RV710_SMC_UCODE_START ;
 int RV730_SMC_INT_VECTOR_SIZE ;
 int RV730_SMC_INT_VECTOR_START ;
 int RV730_SMC_UCODE_SIZE ;
 int RV730_SMC_UCODE_START ;
 int RV740_SMC_INT_VECTOR_SIZE ;
 int RV740_SMC_INT_VECTOR_START ;
 int RV740_SMC_UCODE_SIZE ;
 int RV740_SMC_UCODE_START ;
 int RV770_SMC_INT_VECTOR_SIZE ;
 int RV770_SMC_INT_VECTOR_START ;
 int RV770_SMC_UCODE_SIZE ;
 int RV770_SMC_UCODE_START ;
 int TURKS_SMC_INT_VECTOR_SIZE ;
 int TURKS_SMC_INT_VECTOR_START ;
 int TURKS_SMC_UCODE_SIZE ;
 int TURKS_SMC_UCODE_START ;
 int barts_smc_int_vectors ;
 int caicos_smc_int_vectors ;
 int cayman_smc_int_vectors ;
 int cedar_smc_int_vectors ;
 int cypress_smc_int_vectors ;
 int juniper_smc_int_vectors ;
 int redwood_smc_int_vectors ;
 int rv710_smc_int_vectors ;
 int rv730_smc_int_vectors ;
 int rv740_smc_int_vectors ;
 int rv770_clear_smc_sram (struct radeon_device*,int ) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int const*,int ,int ) ;
 int rv770_program_interrupt_vectors (struct radeon_device*,int ,int const*,int ) ;
 int rv770_smc_int_vectors ;
 int turks_smc_int_vectors ;

int rv770_load_smc_ucode(struct radeon_device *rdev,
    u16 limit)
{
 int ret;
 const u8 *int_vect;
 u16 int_vect_start_address;
 u16 int_vect_size;
 const u8 *ucode_data;
 u16 ucode_start_address;
 u16 ucode_size;

 if (!rdev->smc_fw)
  return -EINVAL;

 rv770_clear_smc_sram(rdev, limit);

 switch (rdev->family) {
 case 129:
  ucode_start_address = RV770_SMC_UCODE_START;
  ucode_size = RV770_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&rv770_smc_int_vectors;
  int_vect_start_address = RV770_SMC_INT_VECTOR_START;
  int_vect_size = RV770_SMC_INT_VECTOR_SIZE;
  break;
 case 131:
  ucode_start_address = RV730_SMC_UCODE_START;
  ucode_size = RV730_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&rv730_smc_int_vectors;
  int_vect_start_address = RV730_SMC_INT_VECTOR_START;
  int_vect_size = RV730_SMC_INT_VECTOR_SIZE;
  break;
 case 132:
  ucode_start_address = RV710_SMC_UCODE_START;
  ucode_size = RV710_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&rv710_smc_int_vectors;
  int_vect_start_address = RV710_SMC_INT_VECTOR_START;
  int_vect_size = RV710_SMC_INT_VECTOR_SIZE;
  break;
 case 130:
  ucode_start_address = RV740_SMC_UCODE_START;
  ucode_size = RV740_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&rv740_smc_int_vectors;
  int_vect_start_address = RV740_SMC_INT_VECTOR_START;
  int_vect_size = RV740_SMC_INT_VECTOR_SIZE;
  break;
 case 137:
  ucode_start_address = CEDAR_SMC_UCODE_START;
  ucode_size = CEDAR_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&cedar_smc_int_vectors;
  int_vect_start_address = CEDAR_SMC_INT_VECTOR_START;
  int_vect_size = CEDAR_SMC_INT_VECTOR_SIZE;
  break;
 case 133:
  ucode_start_address = REDWOOD_SMC_UCODE_START;
  ucode_size = REDWOOD_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&redwood_smc_int_vectors;
  int_vect_start_address = REDWOOD_SMC_INT_VECTOR_START;
  int_vect_size = REDWOOD_SMC_INT_VECTOR_SIZE;
  break;
 case 134:
  ucode_start_address = JUNIPER_SMC_UCODE_START;
  ucode_size = JUNIPER_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&juniper_smc_int_vectors;
  int_vect_start_address = JUNIPER_SMC_INT_VECTOR_START;
  int_vect_size = JUNIPER_SMC_INT_VECTOR_SIZE;
  break;
 case 136:
 case 135:
  ucode_start_address = CYPRESS_SMC_UCODE_START;
  ucode_size = CYPRESS_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&cypress_smc_int_vectors;
  int_vect_start_address = CYPRESS_SMC_INT_VECTOR_START;
  int_vect_size = CYPRESS_SMC_INT_VECTOR_SIZE;
  break;
 case 140:
  ucode_start_address = BARTS_SMC_UCODE_START;
  ucode_size = BARTS_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&barts_smc_int_vectors;
  int_vect_start_address = BARTS_SMC_INT_VECTOR_START;
  int_vect_size = BARTS_SMC_INT_VECTOR_SIZE;
  break;
 case 128:
  ucode_start_address = TURKS_SMC_UCODE_START;
  ucode_size = TURKS_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&turks_smc_int_vectors;
  int_vect_start_address = TURKS_SMC_INT_VECTOR_START;
  int_vect_size = TURKS_SMC_INT_VECTOR_SIZE;
  break;
 case 139:
  ucode_start_address = CAICOS_SMC_UCODE_START;
  ucode_size = CAICOS_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&caicos_smc_int_vectors;
  int_vect_start_address = CAICOS_SMC_INT_VECTOR_START;
  int_vect_size = CAICOS_SMC_INT_VECTOR_SIZE;
  break;
 case 138:
  ucode_start_address = CAYMAN_SMC_UCODE_START;
  ucode_size = CAYMAN_SMC_UCODE_SIZE;
  int_vect = (const u8 *)&cayman_smc_int_vectors;
  int_vect_start_address = CAYMAN_SMC_INT_VECTOR_START;
  int_vect_size = CAYMAN_SMC_INT_VECTOR_SIZE;
  break;
 default:
  DRM_ERROR("unknown asic in smc ucode loader\n");
  BUG();
 }


 ucode_data = (const u8 *)rdev->smc_fw->data;
 ret = rv770_copy_bytes_to_smc(rdev, ucode_start_address,
          ucode_data, ucode_size, limit);
 if (ret)
  return ret;


 ret = rv770_program_interrupt_vectors(rdev, int_vect_start_address,
           int_vect, int_vect_size);
 if (ret)
  return ret;

 return 0;
}
