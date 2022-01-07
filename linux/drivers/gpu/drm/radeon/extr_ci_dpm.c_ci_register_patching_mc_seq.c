
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct radeon_device {TYPE_1__* pdev; } ;
struct ci_mc_reg_table {size_t last; size_t num_entries; TYPE_3__* mc_reg_table_entry; TYPE_2__* mc_reg_address; } ;
struct TYPE_6__ {int mclk_max; int* mc_data; } ;
struct TYPE_5__ {int s1; } ;
struct TYPE_4__ {int device; } ;


 int EINVAL ;

 int MC_SEQ_IO_DEBUG_DATA ;
 int MC_SEQ_IO_DEBUG_INDEX ;
 int MC_SEQ_MISC0 ;





 int RREG32 (int ) ;
 scalar_t__ SMU7_DISCRETE_MC_REGISTER_ARRAY_SIZE ;
 int WREG32 (int ,int) ;

__attribute__((used)) static int ci_register_patching_mc_seq(struct radeon_device *rdev,
           struct ci_mc_reg_table *table)
{
 u8 i, k;
 u32 tmp;
 bool patch;

 tmp = RREG32(MC_SEQ_MISC0);
 patch = ((tmp & 0x0000f00) == 0x300) ? 1 : 0;

 if (patch &&
     ((rdev->pdev->device == 0x67B0) ||
      (rdev->pdev->device == 0x67B1))) {
  for (i = 0; i < table->last; i++) {
   if (table->last >= SMU7_DISCRETE_MC_REGISTER_ARRAY_SIZE)
    return -EINVAL;
   switch(table->mc_reg_address[i].s1 >> 2) {
   case 132:
    for (k = 0; k < table->num_entries; k++) {
     if ((table->mc_reg_table_entry[k].mclk_max == 125000) ||
         (table->mc_reg_table_entry[k].mclk_max == 137500))
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFFFFFF8) |
       0x00000007;
    }
    break;
   case 129:
    for (k = 0; k < table->num_entries; k++) {
     if ((table->mc_reg_table_entry[k].mclk_max == 125000) ||
         (table->mc_reg_table_entry[k].mclk_max == 137500))
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFFF0F00) |
       0x0000D0DD;
    }
    break;
   case 128:
    for (k = 0; k < table->num_entries; k++) {
     if ((table->mc_reg_table_entry[k].mclk_max == 125000) ||
         (table->mc_reg_table_entry[k].mclk_max == 137500))
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFFF0F00) |
       0x0000D0DD;
    }
    break;
   case 130:
    for (k = 0; k < table->num_entries; k++) {
     if ((table->mc_reg_table_entry[k].mclk_max == 125000) ||
         (table->mc_reg_table_entry[k].mclk_max == 137500))
      table->mc_reg_table_entry[k].mc_data[i] = 0;
    }
    break;
   case 133:
    for (k = 0; k < table->num_entries; k++) {
     if (table->mc_reg_table_entry[k].mclk_max == 125000)
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFE0FE0F) |
       0x000C0140;
     else if (table->mc_reg_table_entry[k].mclk_max == 137500)
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFE0FE0F) |
       0x000C0150;
    }
    break;
   case 131:
    for (k = 0; k < table->num_entries; k++) {
     if (table->mc_reg_table_entry[k].mclk_max == 125000)
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFFFFFE0) |
       0x00000030;
     else if (table->mc_reg_table_entry[k].mclk_max == 137500)
      table->mc_reg_table_entry[k].mc_data[i] =
       (table->mc_reg_table_entry[k].mc_data[i] & 0xFFFFFFE0) |
       0x00000035;
    }
    break;
   default:
    break;
   }
  }

  WREG32(MC_SEQ_IO_DEBUG_INDEX, 3);
  tmp = RREG32(MC_SEQ_IO_DEBUG_DATA);
  tmp = (tmp & 0xFFF8FFFF) | (1 << 16);
  WREG32(MC_SEQ_IO_DEBUG_INDEX, 3);
  WREG32(MC_SEQ_IO_DEBUG_DATA, tmp);
 }

 return 0;
}
