
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_type_manager {struct amdgpu_vram_mgr* priv; } ;
struct amdgpu_vram_mgr {int usage; } ;


 int atomic64_read (int *) ;

uint64_t amdgpu_vram_mgr_usage(struct ttm_mem_type_manager *man)
{
 struct amdgpu_vram_mgr *mgr = man->priv;

 return atomic64_read(&mgr->usage);
}
