
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ULONG_MAX ;
 void* vzalloc (unsigned long) ;

void *dm_vcalloc(unsigned long nmemb, unsigned long elem_size)
{
 unsigned long size;
 void *addr;




 if (nmemb > (ULONG_MAX / elem_size))
  return ((void*)0);

 size = nmemb * elem_size;
 addr = vzalloc(size);

 return addr;
}
