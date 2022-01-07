
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int __swab32p (int*) ;

__attribute__((used)) static inline void crypto4xx_memcpy_swab32(u32 *dst, const void *buf,
        size_t len)
{
 for (; len >= 4; buf += 4, len -= 4)
  *dst++ = __swab32p((u32 *) buf);

 if (len) {
  const u8 *tmp = (u8 *)buf;

  switch (len) {
  case 3:
   *dst = (tmp[2] << 16) |
          (tmp[1] << 8) |
          tmp[0];
   break;
  case 2:
   *dst = (tmp[1] << 8) |
          tmp[0];
   break;
  case 1:
   *dst = tmp[0];
   break;
  default:
   break;
  }
 }
}
