
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ilog2 (int) ;

__attribute__((used)) static inline u64 alignment_of(u64 ptr)
{
 return ilog2(ptr & (~(ptr - 1)));
}
