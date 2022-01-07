
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 i5100_redmemb_ecc_locator(u32 a)
{
 return a & ((1 << 18) - 1);
}
