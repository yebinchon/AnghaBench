
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be16 ;


 int MPA_RR_MASK_REVISION ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static inline void __mpa_rr_set_revision(__be16 *bits, u8 rev)
{
 *bits = (*bits & ~MPA_RR_MASK_REVISION) |
  (cpu_to_be16(rev) & MPA_RR_MASK_REVISION);
}
