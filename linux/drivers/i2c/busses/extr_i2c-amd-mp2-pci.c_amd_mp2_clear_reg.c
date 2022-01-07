
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_mp2_dev {scalar_t__ mmio; } ;


 int AMD_C2P_MSG0 ;
 int AMD_C2P_MSG9 ;
 int AMD_P2C_MSG1 ;
 int AMD_P2C_MSG2 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void amd_mp2_clear_reg(struct amd_mp2_dev *privdata)
{
 int reg;

 for (reg = AMD_C2P_MSG0; reg <= AMD_C2P_MSG9; reg += 4)
  writel(0, privdata->mmio + reg);

 for (reg = AMD_P2C_MSG1; reg <= AMD_P2C_MSG2; reg += 4)
  writel(0, privdata->mmio + reg);
}
