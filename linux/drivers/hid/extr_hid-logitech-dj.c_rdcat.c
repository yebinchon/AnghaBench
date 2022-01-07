
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static void rdcat(char *rdesc, unsigned int *rsize, const char *data, unsigned int size)
{
 memcpy(rdesc + *rsize, data, size);
 *rsize += size;
}
