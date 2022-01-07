
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {unsigned int bpp; int bpp_specified; } ;


 int EINVAL ;
 unsigned int simple_strtol (char const*,char**,int) ;

__attribute__((used)) static int drm_mode_parse_cmdline_bpp(const char *str, char **end_ptr,
          struct drm_cmdline_mode *mode)
{
 unsigned int bpp;

 if (str[0] != '-')
  return -EINVAL;

 str++;
 bpp = simple_strtol(str, end_ptr, 10);
 if (*end_ptr == str)
  return -EINVAL;

 mode->bpp = bpp;
 mode->bpp_specified = 1;

 return 0;
}
