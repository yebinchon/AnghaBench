
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static char *is_dc_name(char *buf, size_t bsize, unsigned int source)
{
 static const char * const dc_int_names[] = {
  "common",
  "lcb",
  "8051",
  "lbm"
 };

 if (source < ARRAY_SIZE(dc_int_names))
  snprintf(buf, bsize, "dc_%s_int", dc_int_names[source]);
 else
  snprintf(buf, bsize, "DCInt%u", source);
 return buf;
}
