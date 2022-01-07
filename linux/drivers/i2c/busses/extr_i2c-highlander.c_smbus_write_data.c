
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __be16 ;


 int be16_to_cpup (int *) ;

__attribute__((used)) static void smbus_write_data(u8 *src, u16 *dst, int len)
{
 for (; len > 1; len -= 2) {
  *dst++ = be16_to_cpup((__be16 *)src);
  src += 2;
 }

 if (len)
  *dst = *src << 8;
}
