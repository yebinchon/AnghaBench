
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int PCI_EXP_LNKSTA_NLW ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;

__attribute__((used)) static u32 extract_width(u16 linkstat)
{
 return (linkstat & PCI_EXP_LNKSTA_NLW) >> PCI_EXP_LNKSTA_NLW_SHIFT;
}
