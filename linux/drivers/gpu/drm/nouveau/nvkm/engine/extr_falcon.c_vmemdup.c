
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;
 void* vmalloc (size_t) ;

__attribute__((used)) static void *
vmemdup(const void *src, size_t len)
{
 void *p = vmalloc(len);

 if (p)
  memcpy(p, src, len);
 return p;
}
