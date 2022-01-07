
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __u32 ;
typedef int __be32 ;


 int cpu_to_be32p (int const*) ;

void qce_cpu_to_be32p_array(__be32 *dst, const u8 *src, unsigned int len)
{
 __be32 *d = dst;
 const u8 *s = src;
 unsigned int n;

 n = len / sizeof(u32);
 for (; n > 0; n--) {
  *d = cpu_to_be32p((const __u32 *) s);
  s += sizeof(__u32);
  d++;
 }
}
