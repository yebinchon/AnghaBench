
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_header {int length; } ;



__attribute__((used)) static size_t dmi_entry_length(const struct dmi_header *dh)
{
 const char *p = (const char *)dh;

 p += dh->length;

 while (p[0] || p[1])
  p++;

 return 2 + p - (const char *)dh;
}
