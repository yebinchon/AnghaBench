
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int const u32 ;
typedef int const u16 ;


 scalar_t__ const BDB_MIPI_SEQUENCE ;

__attribute__((used)) static u32 _get_blocksize(const u8 *block_base)
{

 if (*block_base == BDB_MIPI_SEQUENCE && *(block_base + 3) >= 3)
  return *((const u32 *)(block_base + 4));
 else
  return *((const u16 *)(block_base + 1));
}
