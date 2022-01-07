
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmmu_vmsa_device {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 ipmmu_read(struct ipmmu_vmsa_device *mmu, unsigned int offset)
{
 return ioread32(mmu->base + offset);
}
