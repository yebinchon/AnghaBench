
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i40iw_hmc_pble_rsrc {int fpm_base_addr; } ;



__attribute__((used)) static inline u32 fpm_to_idx(struct i40iw_hmc_pble_rsrc *pble_rsrc, u64 addr)
{
 return (addr - (pble_rsrc->fpm_base_addr)) >> 3;
}
