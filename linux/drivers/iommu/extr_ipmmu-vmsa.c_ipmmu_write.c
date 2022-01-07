
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmmu_vmsa_device {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ipmmu_write(struct ipmmu_vmsa_device *mmu, unsigned int offset,
   u32 data)
{
 iowrite32(data, mmu->base + offset);
}
