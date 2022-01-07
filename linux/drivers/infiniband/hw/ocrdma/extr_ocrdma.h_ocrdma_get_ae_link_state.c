
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OCRDMA_AE_LSC_LS_MASK ;
 int OCRDMA_AE_LSC_LS_SHIFT ;

__attribute__((used)) static inline u8 ocrdma_get_ae_link_state(u32 ae_state)
{
 return ((ae_state & OCRDMA_AE_LSC_LS_MASK) >> OCRDMA_AE_LSC_LS_SHIFT);
}
