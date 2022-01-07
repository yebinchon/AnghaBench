
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be16 ;


 int MPA_RR_MASK_REVISION ;
 int be16_to_cpu (int) ;

__attribute__((used)) static inline u8 __mpa_rr_revision(__be16 mpa_rr_bits)
{
 __be16 rev = mpa_rr_bits & MPA_RR_MASK_REVISION;

 return be16_to_cpu(rev);
}
