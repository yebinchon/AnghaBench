
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_header {int dummy; } ;


 int memcpy (char*,int *,size_t) ;
 int * nvram_buf ;
 int nvram_init () ;
 int nvram_len ;
 char* vmalloc (size_t) ;

char *bcm47xx_nvram_get_contents(size_t *nvram_size)
{
 int err;
 char *nvram;

 if (!nvram_len) {
  err = nvram_init();
  if (err)
   return ((void*)0);
 }

 *nvram_size = nvram_len - sizeof(struct nvram_header);
 nvram = vmalloc(*nvram_size);
 if (!nvram)
  return ((void*)0);
 memcpy(nvram, &nvram_buf[sizeof(struct nvram_header)], *nvram_size);

 return nvram;
}
