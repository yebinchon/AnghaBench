
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct drm_cmdline_mode {int specified; int bpp_specified; int refresh_specified; int name; } ;


 unsigned int DRM_DISPLAY_MODE_LEN ;
 int drm_mode_parse_cmdline_bpp (char*,char**,struct drm_cmdline_mode*) ;
 int drm_mode_parse_cmdline_extra (char const*,int,int,struct drm_connector const*,struct drm_cmdline_mode*) ;
 int drm_mode_parse_cmdline_options (char*,int,struct drm_connector const*,struct drm_cmdline_mode*) ;
 int drm_mode_parse_cmdline_refresh (char*,char**,struct drm_cmdline_mode*) ;
 int drm_mode_parse_cmdline_res_mode (char const*,unsigned int,int,struct drm_connector const*,struct drm_cmdline_mode*) ;
 int drm_named_mode_is_in_whitelist (char const*,unsigned int) ;
 char* fb_mode_option ;
 int isdigit (char const) ;
 char* max (char*,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strscpy (int ,char const*,unsigned int) ;

bool drm_mode_parse_command_line_for_connector(const char *mode_option,
            const struct drm_connector *connector,
            struct drm_cmdline_mode *mode)
{
 const char *name;
 bool named_mode = 0, parse_extras = 0;
 unsigned int bpp_off = 0, refresh_off = 0, options_off = 0;
 unsigned int mode_end = 0;
 char *bpp_ptr = ((void*)0), *refresh_ptr = ((void*)0), *extra_ptr = ((void*)0);
 char *options_ptr = ((void*)0);
 char *bpp_end_ptr = ((void*)0), *refresh_end_ptr = ((void*)0);
 int ret;






 if (!mode_option) {
  mode->specified = 0;
  return 0;
 }

 name = mode_option;
 if (!isdigit(name[0]) && name[0] != 'x') {
  unsigned int namelen = strlen(name);





  if (namelen == 1) {
   ret = drm_mode_parse_cmdline_extra(name, namelen, 1,
          connector, mode);
   if (!ret)
    return 1;
  }

  named_mode = 1;
 }


 bpp_ptr = strchr(name, '-');
 if (bpp_ptr) {
  bpp_off = bpp_ptr - name;
  mode->bpp_specified = 1;
 }

 refresh_ptr = strchr(name, '@');
 if (refresh_ptr) {
  if (named_mode)
   return 0;

  refresh_off = refresh_ptr - name;
  mode->refresh_specified = 1;
 }


 options_ptr = strchr(name, ',');
 if (options_ptr)
  options_off = options_ptr - name;


 if (bpp_ptr) {
  mode_end = bpp_off;
 } else if (refresh_ptr) {
  mode_end = refresh_off;
 } else if (options_ptr) {
  mode_end = options_off;
 } else {
  mode_end = strlen(name);
  parse_extras = 1;
 }

 if (named_mode) {
  if (mode_end + 1 > DRM_DISPLAY_MODE_LEN)
   return 0;

  if (!drm_named_mode_is_in_whitelist(name, mode_end))
   return 0;

  strscpy(mode->name, name, mode_end + 1);
 } else {
  ret = drm_mode_parse_cmdline_res_mode(name, mode_end,
            parse_extras,
            connector,
            mode);
  if (ret)
   return 0;
 }
 mode->specified = 1;

 if (bpp_ptr) {
  ret = drm_mode_parse_cmdline_bpp(bpp_ptr, &bpp_end_ptr, mode);
  if (ret)
   return 0;
 }

 if (refresh_ptr) {
  ret = drm_mode_parse_cmdline_refresh(refresh_ptr,
           &refresh_end_ptr, mode);
  if (ret)
   return 0;
 }





 if (bpp_ptr && refresh_ptr)
  extra_ptr = max(bpp_end_ptr, refresh_end_ptr);
 else if (bpp_ptr)
  extra_ptr = bpp_end_ptr;
 else if (refresh_ptr)
  extra_ptr = refresh_end_ptr;

 if (extra_ptr &&
     extra_ptr != options_ptr) {
  int len = strlen(name) - (extra_ptr - name);

  ret = drm_mode_parse_cmdline_extra(extra_ptr, len, 0,
         connector, mode);
  if (ret)
   return 0;
 }

 if (options_ptr) {
  int len = strlen(name) - (options_ptr - name);

  ret = drm_mode_parse_cmdline_options(options_ptr, len,
           connector, mode);
  if (ret)
   return 0;
 }

 return 1;
}
