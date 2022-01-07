
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int pkey_match(u16 key1, u16 key2)
{
 return (((key1 & 0x7fff) != 0) &&
  ((key1 & 0x7fff) == (key2 & 0x7fff)) &&
  ((key1 & 0x8000) || (key2 & 0x8000))) ? 1 : 0;
}
