
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_type_manager {int size; struct amdgpu_gtt_mgr* priv; } ;
struct amdgpu_gtt_mgr {int available; } ;
typedef int s64 ;


 int PAGE_SIZE ;
 int atomic64_read (int *) ;

uint64_t amdgpu_gtt_mgr_usage(struct ttm_mem_type_manager *man)
{
 struct amdgpu_gtt_mgr *mgr = man->priv;
 s64 result = man->size - atomic64_read(&mgr->available);

 return (result > 0 ? result : 0) * PAGE_SIZE;
}
