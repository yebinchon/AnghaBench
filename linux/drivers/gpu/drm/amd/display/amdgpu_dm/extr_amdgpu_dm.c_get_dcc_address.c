
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int AMDGPU_TILING_GET (scalar_t__,int ) ;
 int DCC_OFFSET_256B ;

__attribute__((used)) static inline uint64_t get_dcc_address(uint64_t address, uint64_t tiling_flags)
{
 uint32_t offset = AMDGPU_TILING_GET(tiling_flags, DCC_OFFSET_256B);

 return offset ? (address + offset * 256) : 0;
}
