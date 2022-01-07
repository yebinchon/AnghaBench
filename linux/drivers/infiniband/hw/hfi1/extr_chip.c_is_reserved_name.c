
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_RESERVED_START ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static char *is_reserved_name(char *buf, size_t bsize, unsigned int source)
{
 snprintf(buf, bsize, "Reserved%u", source + IS_RESERVED_START);
 return buf;
}
