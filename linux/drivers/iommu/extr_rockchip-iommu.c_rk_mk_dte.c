
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int RK_DTE_PT_ADDRESS_MASK ;
 int RK_DTE_PT_VALID ;

__attribute__((used)) static inline u32 rk_mk_dte(dma_addr_t pt_dma)
{
 return (pt_dma & RK_DTE_PT_ADDRESS_MASK) | RK_DTE_PT_VALID;
}
