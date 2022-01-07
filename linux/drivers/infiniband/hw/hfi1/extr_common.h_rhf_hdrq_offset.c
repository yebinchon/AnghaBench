
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int RHF_HDRQ_OFFSET_MASK ;
 int RHF_HDRQ_OFFSET_SHIFT ;

__attribute__((used)) static inline u32 rhf_hdrq_offset(u64 rhf)
{
 return (rhf >> RHF_HDRQ_OFFSET_SHIFT) & RHF_HDRQ_OFFSET_MASK;
}
