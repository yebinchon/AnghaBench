
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ADF_MAX_DEVICES ;
 int* id_map ;

__attribute__((used)) static unsigned int adf_find_free_id(void)
{
 unsigned int i;

 for (i = 0; i < ADF_MAX_DEVICES; i++) {
  if (!id_map[i]) {
   id_map[i] = 1;
   return i;
  }
 }
 return ADF_MAX_DEVICES + 1;
}
