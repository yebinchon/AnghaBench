
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t snprintf (char*,size_t,char*) ;

__attribute__((used)) static const char *
stringify_page_sizes(unsigned int page_sizes, char *buf, size_t len)
{
 size_t x = 0;

 switch (page_sizes) {
 case 0:
  return "";
 case 129:
  return "4K";
 case 128:
  return "64K";
 case 130:
  return "2M";
 default:
  if (!buf)
   return "M";

  if (page_sizes & 130)
   x += snprintf(buf + x, len - x, "2M, ");
  if (page_sizes & 128)
   x += snprintf(buf + x, len - x, "64K, ");
  if (page_sizes & 129)
   x += snprintf(buf + x, len - x, "4K, ");
  buf[x-2] = '\0';

  return buf;
 }
}
