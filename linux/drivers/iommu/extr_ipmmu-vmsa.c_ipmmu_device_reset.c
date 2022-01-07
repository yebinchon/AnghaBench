
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {unsigned int num_ctx; } ;


 scalar_t__ IMCTR ;
 unsigned int IM_CTX_SIZE ;
 int ipmmu_write (struct ipmmu_vmsa_device*,scalar_t__,int ) ;

__attribute__((used)) static void ipmmu_device_reset(struct ipmmu_vmsa_device *mmu)
{
 unsigned int i;


 for (i = 0; i < mmu->num_ctx; ++i)
  ipmmu_write(mmu, i * IM_CTX_SIZE + IMCTR, 0);
}
