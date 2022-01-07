
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *slashstrip(char *s)
{
 char *r = s;

 while (*s)
  if (*s++ == '/')
   r = s;
 return r;
}
