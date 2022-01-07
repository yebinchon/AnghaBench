
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct flcn_u64 {int lo; scalar_t__ hi; } ;



__attribute__((used)) static inline u64 flcn64_to_u64(const struct flcn_u64 f)
{
 return ((u64)f.hi) << 32 | f.lo;
}
