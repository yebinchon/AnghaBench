
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u16 ;


 int be16_to_cpus (int *) ;

void ide_fixstring(u8 *s, const int bytecount, const int byteswap)
{
 u8 *p, *end = &s[bytecount & ~1];

 if (byteswap) {

  for (p = s ; p != end ; p += 2)
   be16_to_cpus((u16 *) p);
 }


 p = s;
 while (s != end && *s == ' ')
  ++s;

 while (s != end && *s) {
  if (*s++ != ' ' || (s != end && *s && *s != ' '))
   *p++ = *(s-1);
 }

 while (p != end)
  *p++ = '\0';
}
