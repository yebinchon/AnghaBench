
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct smu_table {int size; int cpu_addr; int mc_address; int bo; int domain; int align; } ;
struct smu_table_context {struct smu_table memory_pool; } ;
struct smu_context {int pool_size; struct smu_table_context smu_table; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;




 int SMU_MEMORY_POOL_SIZE_ZERO ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int smu_alloc_memory_pool(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *memory_pool = &smu_table->memory_pool;
 uint64_t pool_size = smu->pool_size;
 int ret = 0;

 if (pool_size == SMU_MEMORY_POOL_SIZE_ZERO)
  return ret;

 memory_pool->size = pool_size;
 memory_pool->align = PAGE_SIZE;
 memory_pool->domain = AMDGPU_GEM_DOMAIN_GTT;

 switch (pool_size) {
 case 130:
 case 128:
 case 131:
 case 129:
  ret = amdgpu_bo_create_kernel(adev,
           memory_pool->size,
           memory_pool->align,
           memory_pool->domain,
           &memory_pool->bo,
           &memory_pool->mc_address,
           &memory_pool->cpu_addr);
  break;
 default:
  break;
 }

 return ret;
}
