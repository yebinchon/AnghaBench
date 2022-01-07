
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int snprintf (char*,int,char*,char const* const) ;

__attribute__((used)) static ssize_t bch_snprint_string_list(char *buf,
           size_t size,
           const char * const list[],
           size_t selected)
{
 char *out = buf;
 size_t i;

 for (i = 0; list[i]; i++)
  out += snprintf(out, buf + size - out,
    i == selected ? "[%s] " : "%s ", list[i]);

 out[-1] = '\n';
 return out - buf;
}
