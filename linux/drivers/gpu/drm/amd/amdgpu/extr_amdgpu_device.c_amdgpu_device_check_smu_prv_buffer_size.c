
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct sysinfo {int mem_unit; scalar_t__ totalram; } ;
struct TYPE_2__ {int smu_prv_buffer_size; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int DRM_WARN (char*) ;
 int amdgpu_smu_memory_pool_size ;
 int si_meminfo (struct sysinfo*) ;

__attribute__((used)) static void amdgpu_device_check_smu_prv_buffer_size(struct amdgpu_device *adev)
{
 struct sysinfo si;
 bool is_os_64 = (sizeof(void *) == 8) ? 1 : 0;
 uint64_t total_memory;
 uint64_t dram_size_seven_GB = 0x1B8000000;
 uint64_t dram_size_three_GB = 0xB8000000;

 if (amdgpu_smu_memory_pool_size == 0)
  return;

 if (!is_os_64) {
  DRM_WARN("Not 64-bit OS, feature not supported\n");
  goto def_value;
 }
 si_meminfo(&si);
 total_memory = (uint64_t)si.totalram * si.mem_unit;

 if ((amdgpu_smu_memory_pool_size == 1) ||
  (amdgpu_smu_memory_pool_size == 2)) {
  if (total_memory < dram_size_three_GB)
   goto def_value1;
 } else if ((amdgpu_smu_memory_pool_size == 4) ||
  (amdgpu_smu_memory_pool_size == 8)) {
  if (total_memory < dram_size_seven_GB)
   goto def_value1;
 } else {
  DRM_WARN("Smu memory pool size not supported\n");
  goto def_value;
 }
 adev->pm.smu_prv_buffer_size = amdgpu_smu_memory_pool_size << 28;

 return;

def_value1:
 DRM_WARN("No enough system memory\n");
def_value:
 adev->pm.smu_prv_buffer_size = 0;
}
