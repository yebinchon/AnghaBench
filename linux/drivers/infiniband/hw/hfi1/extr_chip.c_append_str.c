
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int append_str(char *buf, char **curp, int *lenp, const char *s)
{
 char *p = *curp;
 int len = *lenp;
 int result = 0;
 char c;


 if (p != buf) {
  if (len == 0) {
   result = 1;
   goto done;
  }
  *p++ = ',';
  len--;
 }


 while ((c = *s++) != 0) {
  if (len == 0) {
   result = 1;
   goto done;
  }
  *p++ = c;
  len--;
 }

done:

 *curp = p;
 *lenp = len;

 return result;
}
