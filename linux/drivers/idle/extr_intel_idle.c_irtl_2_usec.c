
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long div64_u64 (unsigned long long,int) ;
 unsigned long long* irtl_ns_units ;

__attribute__((used)) static unsigned long long irtl_2_usec(unsigned long long irtl)
{
 unsigned long long ns;

 if (!irtl)
  return 0;

 ns = irtl_ns_units[(irtl >> 10) & 0x7];

 return div64_u64((irtl & 0x3FF) * ns, 1000);
}
