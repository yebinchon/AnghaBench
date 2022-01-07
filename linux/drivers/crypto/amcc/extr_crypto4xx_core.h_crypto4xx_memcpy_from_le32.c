
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crypto4xx_memcpy_swab32 (int *,void const*,size_t) ;

__attribute__((used)) static inline void crypto4xx_memcpy_from_le32(u32 *dst, const void *buf,
           size_t len)
{
 crypto4xx_memcpy_swab32(dst, buf, len);
}
