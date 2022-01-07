
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static inline u_int32_t gpi_i_bit(int i)
{
 if (i < 10)
  return 1 << i;
 else
  return 1 << (i + 14);
}
