
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char*,int const) ;

__attribute__((used)) static void snprintf_int_array(char *str, size_t len,
          const int *array, int nelem)
{
 int i;

 str[0] = '\0';

 for (i = 0; i < nelem; i++) {
  int r = snprintf(str, len, "%s%d", i ? ", " : "", array[i]);
  if (r >= len)
   return;
  str += r;
  len -= r;
 }
}
