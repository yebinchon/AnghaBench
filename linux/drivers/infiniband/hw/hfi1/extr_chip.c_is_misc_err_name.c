
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int *) ;
 int IS_GENERAL_ERR_START ;
 int * cce_misc_names ;
 int snprintf (char*,size_t,char*,int) ;
 int strncpy (char*,int ,size_t) ;

__attribute__((used)) static char *is_misc_err_name(char *buf, size_t bsize, unsigned int source)
{
 if (source < ARRAY_SIZE(cce_misc_names))
  strncpy(buf, cce_misc_names[source], bsize);
 else
  snprintf(buf, bsize, "Reserved%u",
    source + IS_GENERAL_ERR_START);

 return buf;
}
