
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {scalar_t__ rotation_reflection; int name; int specified; } ;


 scalar_t__ DRM_MODE_ROTATE_180 ;
 int FAIL_ON (int) ;
 int drm_mode_parse_command_line_for_connector (char*,int *,struct drm_cmdline_mode*) ;
 int no_connector ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int drm_cmdline_test_name_option(void *ignored)
{
 struct drm_cmdline_mode mode = { };

 FAIL_ON(!drm_mode_parse_command_line_for_connector("NTSC,rotate=180",
          &no_connector,
          &mode));
 FAIL_ON(!mode.specified);
 FAIL_ON(strcmp(mode.name, "NTSC"));
 FAIL_ON(mode.rotation_reflection != DRM_MODE_ROTATE_180);

 return 0;
}
