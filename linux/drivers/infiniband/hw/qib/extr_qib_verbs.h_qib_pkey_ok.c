
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ __s16 ;



__attribute__((used)) static inline int qib_pkey_ok(u16 pkey1, u16 pkey2)
{
 u16 p1 = pkey1 & 0x7FFF;
 u16 p2 = pkey2 & 0x7FFF;





 return p1 && p1 == p2 && ((__s16)pkey1 < 0 || (__s16)pkey2 < 0);
}
