
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int RHF_ERROR_SMASK ;

__attribute__((used)) static inline u64 rhf_err_flags(u64 rhf)
{
 return rhf & RHF_ERROR_SMASK;
}
