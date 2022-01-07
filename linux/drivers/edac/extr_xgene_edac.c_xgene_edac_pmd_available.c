
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int xgene_edac_pmd_available(u32 efuse, int pmd)
{
 return (efuse & (1 << pmd)) ? 0 : 1;
}
