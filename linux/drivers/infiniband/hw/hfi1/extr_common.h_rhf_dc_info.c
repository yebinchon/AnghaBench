
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int RHF_DC_INFO_SMASK ;

__attribute__((used)) static inline u64 rhf_dc_info(u64 rhf)
{
 return rhf & RHF_DC_INFO_SMASK;
}
