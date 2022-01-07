
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le64 ;


 int cpu_to_le64 (unsigned long long) ;

__attribute__((used)) static inline __le64 qib_sdma_make_first_desc0(__le64 descq)
{
 return descq | cpu_to_le64(1ULL << 12);
}
