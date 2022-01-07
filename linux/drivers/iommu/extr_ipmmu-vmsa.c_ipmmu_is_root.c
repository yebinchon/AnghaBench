
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {struct ipmmu_vmsa_device* root; } ;



__attribute__((used)) static bool ipmmu_is_root(struct ipmmu_vmsa_device *mmu)
{
 return mmu->root == mmu;
}
