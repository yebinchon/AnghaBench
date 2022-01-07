
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MCFGR_AXIPIPE_MASK ;
 int MCFGR_AXIPIPE_SHIFT ;
 int clrsetbits_32 (int *,int ,int) ;
 scalar_t__ of_machine_is_compatible (char*) ;

__attribute__((used)) static void handle_imx6_err005766(u32 *mcr)
{
 if (of_machine_is_compatible("fsl,imx6q") ||
     of_machine_is_compatible("fsl,imx6dl") ||
     of_machine_is_compatible("fsl,imx6qp"))
  clrsetbits_32(mcr, MCFGR_AXIPIPE_MASK,
         1 << MCFGR_AXIPIPE_SHIFT);
}
