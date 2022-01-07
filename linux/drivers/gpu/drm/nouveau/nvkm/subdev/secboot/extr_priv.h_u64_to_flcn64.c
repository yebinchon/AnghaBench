
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct flcn_u64 {int lo; int hi; } ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline struct flcn_u64 u64_to_flcn64(u64 u)
{
 struct flcn_u64 ret;

 ret.hi = upper_32_bits(u);
 ret.lo = lower_32_bits(u);

 return ret;
}
