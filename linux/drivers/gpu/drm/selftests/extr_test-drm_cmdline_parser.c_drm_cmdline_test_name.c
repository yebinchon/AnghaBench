
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int refresh_specified; int bpp_specified; int name; } ;


 int FAIL_ON (int) ;
 int drm_mode_parse_command_line_for_connector (char*,int *,struct drm_cmdline_mode*) ;
 int no_connector ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int drm_cmdline_test_name(void *ignored)
{
 struct drm_cmdline_mode mode = { };

 FAIL_ON(!drm_mode_parse_command_line_for_connector("NTSC",
          &no_connector,
          &mode));
 FAIL_ON(strcmp(mode.name, "NTSC"));
 FAIL_ON(mode.refresh_specified);
 FAIL_ON(mode.bpp_specified);

 return 0;
}
