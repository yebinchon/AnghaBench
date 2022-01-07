
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u32 t4_tcb_get_field32(__be64 *tcb, u16 word, u32 mask, u32 shift)
{
 u32 v;
 u64 t = be64_to_cpu(tcb[(31 - word) / 2]);

 if (word & 0x1)
  shift += 32;
 v = (t >> shift) & mask;
 return v;
}
