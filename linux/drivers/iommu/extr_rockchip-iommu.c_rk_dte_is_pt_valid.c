
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RK_DTE_PT_VALID ;

__attribute__((used)) static inline bool rk_dte_is_pt_valid(u32 dte)
{
 return dte & RK_DTE_PT_VALID;
}
