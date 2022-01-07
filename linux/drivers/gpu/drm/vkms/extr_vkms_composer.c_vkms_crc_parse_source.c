
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int vkms_crc_parse_source(const char *src_name, bool *enabled)
{
 int ret = 0;

 if (!src_name) {
  *enabled = 0;
 } else if (strcmp(src_name, "auto") == 0) {
  *enabled = 1;
 } else {
  *enabled = 0;
  ret = -EINVAL;
 }

 return ret;
}
