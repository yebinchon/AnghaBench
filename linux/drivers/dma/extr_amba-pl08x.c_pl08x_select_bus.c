
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int FTDMAC020_LLI_DST_SEL ;
 int FTDMAC020_LLI_SRC_SEL ;
 int PL080_CONTROL_DST_AHB2 ;
 int PL080_CONTROL_SRC_AHB2 ;
 int PL08X_AHB1 ;
 int PL08X_AHB2 ;

__attribute__((used)) static u32 pl08x_select_bus(bool ftdmac020, u8 src, u8 dst)
{
 u32 cctl = 0;
 u32 dst_ahb2;
 u32 src_ahb2;


 if (ftdmac020) {
  dst_ahb2 = FTDMAC020_LLI_DST_SEL;
  src_ahb2 = FTDMAC020_LLI_SRC_SEL;
 } else {
  dst_ahb2 = PL080_CONTROL_DST_AHB2;
  src_ahb2 = PL080_CONTROL_SRC_AHB2;
 }

 if (!(dst & PL08X_AHB1) || ((dst & PL08X_AHB2) && (src & PL08X_AHB1)))
  cctl |= dst_ahb2;
 if (!(src & PL08X_AHB1) || ((src & PL08X_AHB2) && !(dst & PL08X_AHB2)))
  cctl |= src_ahb2;

 return cctl;
}
