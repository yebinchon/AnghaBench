
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u32 ;
typedef unsigned long u16 ;


 unsigned long SDMA_AHG_FIELD_LEN_MASK ;
 unsigned long SDMA_AHG_FIELD_LEN_SHIFT ;
 unsigned long SDMA_AHG_FIELD_START_MASK ;
 unsigned long SDMA_AHG_FIELD_START_SHIFT ;
 unsigned long SDMA_AHG_INDEX_MASK ;
 unsigned long SDMA_AHG_INDEX_SHIFT ;
 unsigned long SDMA_AHG_UPDATE_ENABLE_SHIFT ;
 unsigned long SDMA_AHG_VALUE_MASK ;
 unsigned long SDMA_AHG_VALUE_SHIFT ;

__attribute__((used)) static inline u32 sdma_build_ahg_descriptor(
 u16 data,
 u8 dwindex,
 u8 startbit,
 u8 bits)
{
 return (u32)(1UL << SDMA_AHG_UPDATE_ENABLE_SHIFT |
  ((startbit & SDMA_AHG_FIELD_START_MASK) <<
  SDMA_AHG_FIELD_START_SHIFT) |
  ((bits & SDMA_AHG_FIELD_LEN_MASK) <<
  SDMA_AHG_FIELD_LEN_SHIFT) |
  ((dwindex & SDMA_AHG_INDEX_MASK) <<
  SDMA_AHG_INDEX_SHIFT) |
  ((data & SDMA_AHG_VALUE_MASK) <<
  SDMA_AHG_VALUE_SHIFT));
}
