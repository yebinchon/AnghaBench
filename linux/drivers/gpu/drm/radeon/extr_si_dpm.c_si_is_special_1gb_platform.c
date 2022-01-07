
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int MC_ARB_RAMCFG ;
 int MC_SEQ_IO_DEBUG_DATA ;
 int MC_SEQ_IO_DEBUG_INDEX ;
 int MC_SEQ_MISC0 ;
 int MC_SEQ_MISC0_GDDR5_MASK ;
 int MC_SEQ_MISC0_GDDR5_SHIFT ;
 int MC_SEQ_MISC0_GDDR5_VALUE ;
 int MC_SEQ_MISC0_REV_ID_MASK ;
 int MC_SEQ_MISC0_REV_ID_SHIFT ;
 int MC_SEQ_MISC0_REV_ID_VALUE ;
 int MC_SEQ_MISC0_VEN_ID_MASK ;
 int MC_SEQ_MISC0_VEN_ID_SHIFT ;
 int MC_SEQ_MISC0_VEN_ID_VALUE ;
 int NOOFBANK_MASK ;
 int NOOFBANK_SHIFT ;
 int NOOFCOLS_MASK ;
 int NOOFCOLS_SHIFT ;
 int NOOFROWS_MASK ;
 int NOOFROWS_SHIFT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static bool si_is_special_1gb_platform(struct radeon_device *rdev)
{
 bool ret = 0;
 u32 tmp, width, row, column, bank, density;
 bool is_memory_gddr5, is_special;

 tmp = RREG32(MC_SEQ_MISC0);
 is_memory_gddr5 = (MC_SEQ_MISC0_GDDR5_VALUE == ((tmp & MC_SEQ_MISC0_GDDR5_MASK) >> MC_SEQ_MISC0_GDDR5_SHIFT));
 is_special = (MC_SEQ_MISC0_REV_ID_VALUE == ((tmp & MC_SEQ_MISC0_REV_ID_MASK) >> MC_SEQ_MISC0_REV_ID_SHIFT))
  & (MC_SEQ_MISC0_VEN_ID_VALUE == ((tmp & MC_SEQ_MISC0_VEN_ID_MASK) >> MC_SEQ_MISC0_VEN_ID_SHIFT));

 WREG32(MC_SEQ_IO_DEBUG_INDEX, 0xb);
 width = ((RREG32(MC_SEQ_IO_DEBUG_DATA) >> 1) & 1) ? 16 : 32;

 tmp = RREG32(MC_ARB_RAMCFG);
 row = ((tmp & NOOFROWS_MASK) >> NOOFROWS_SHIFT) + 10;
 column = ((tmp & NOOFCOLS_MASK) >> NOOFCOLS_SHIFT) + 8;
 bank = ((tmp & NOOFBANK_MASK) >> NOOFBANK_SHIFT) + 2;

 density = (1 << (row + column - 20 + bank)) * width;

 if ((rdev->pdev->device == 0x6819) &&
     is_memory_gddr5 && is_special && (density == 0x400))
  ret = 1;

 return ret;
}
