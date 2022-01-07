
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __be16 ;


 int cpu_to_be16p (int ) ;

__attribute__((used)) static void smbus_read_data(u16 *src, u8 *dst, int len)
{
 for (; len > 1; len -= 2) {
  *(__be16 *)dst = cpu_to_be16p(src++);
  dst += 2;
 }

 if (len)
  *dst = *src >> 8;
}
