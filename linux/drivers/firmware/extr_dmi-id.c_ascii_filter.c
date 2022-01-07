
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ascii_filter(char *d, const char *s)
{

 for (; *s; s++)
  if (*s > ' ' && *s < 127 && *s != ':')
   *(d++) = *s;

 *d = 0;
}
