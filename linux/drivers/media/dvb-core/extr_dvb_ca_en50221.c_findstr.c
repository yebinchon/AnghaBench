
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static char *findstr(char *haystack, int hlen, char *needle, int nlen)
{
 int i;

 if (hlen < nlen)
  return ((void*)0);

 for (i = 0; i <= hlen - nlen; i++) {
  if (!strncmp(haystack + i, needle, nlen))
   return haystack + i;
 }

 return ((void*)0);
}
