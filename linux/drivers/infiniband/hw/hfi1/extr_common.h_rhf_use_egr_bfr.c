
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int RHF_USE_EGR_BFR_SMASK ;

__attribute__((used)) static inline u64 rhf_use_egr_bfr(u64 rhf)
{
 return rhf & RHF_USE_EGR_BFR_SMASK;
}
