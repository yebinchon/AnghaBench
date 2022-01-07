
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DATA_LINK_M_N_MASK ;

__attribute__((used)) static void
intel_reduce_m_n_ratio(u32 *num, u32 *den)
{
 while (*num > DATA_LINK_M_N_MASK ||
        *den > DATA_LINK_M_N_MASK) {
  *num >>= 1;
  *den >>= 1;
 }
}
