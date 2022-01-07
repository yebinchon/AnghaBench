
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int *) ;
 int IS_VARIOUS_START ;
 int snprintf (char*,size_t,char*,int) ;
 int strncpy (char*,int ,size_t) ;
 int * various_names ;

__attribute__((used)) static char *is_various_name(char *buf, size_t bsize, unsigned int source)
{
 if (source < ARRAY_SIZE(various_names))
  strncpy(buf, various_names[source], bsize);
 else
  snprintf(buf, bsize, "Reserved%u", source + IS_VARIOUS_START);
 return buf;
}
