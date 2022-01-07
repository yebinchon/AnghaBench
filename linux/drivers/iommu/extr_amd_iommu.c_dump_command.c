
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int * data; } ;


 struct iommu_cmd* iommu_phys_to_virt (unsigned long) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static void dump_command(unsigned long phys_addr)
{
 struct iommu_cmd *cmd = iommu_phys_to_virt(phys_addr);
 int i;

 for (i = 0; i < 4; ++i)
  pr_err("CMD[%d]: %08x\n", i, cmd->data[i]);
}
