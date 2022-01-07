
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_device {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void gmc_v7_0_get_vm_pde(struct amdgpu_device *adev, int level,
    uint64_t *addr, uint64_t *flags)
{
 BUG_ON(*addr & 0xFFFFFF0000000FFFULL);
}
