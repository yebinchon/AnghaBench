
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u64 t4_tcb_get_field64(__be64 *tcb, u16 word)
{
 u64 tlo = be64_to_cpu(tcb[((31 - word) / 2)]);
 u64 thi = be64_to_cpu(tcb[((31 - word) / 2) - 1]);
 u64 t;
 u32 shift = 32;

 t = (thi << shift) | (tlo >> shift);

 return t;
}
