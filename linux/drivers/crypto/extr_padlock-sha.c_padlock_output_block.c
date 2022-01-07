
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int swab32 (int ) ;

__attribute__((used)) static inline void padlock_output_block(uint32_t *src,
    uint32_t *dst, size_t count)
{
 while (count--)
  *dst++ = swab32(*src++);
}
