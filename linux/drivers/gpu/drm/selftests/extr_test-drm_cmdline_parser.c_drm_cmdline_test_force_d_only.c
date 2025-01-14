
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int specified; int refresh_specified; int bpp_specified; int rb; int cvt; int interlace; int margins; scalar_t__ force; } ;


 scalar_t__ DRM_FORCE_OFF ;
 int FAIL_ON (int) ;
 int drm_mode_parse_command_line_for_connector (char*,int *,struct drm_cmdline_mode*) ;
 int no_connector ;

__attribute__((used)) static int drm_cmdline_test_force_d_only(void *ignored)
{
 struct drm_cmdline_mode mode = { };

 FAIL_ON(!drm_mode_parse_command_line_for_connector("d",
          &no_connector,
          &mode));
 FAIL_ON(mode.specified);
 FAIL_ON(mode.refresh_specified);
 FAIL_ON(mode.bpp_specified);

 FAIL_ON(mode.rb);
 FAIL_ON(mode.cvt);
 FAIL_ON(mode.interlace);
 FAIL_ON(mode.margins);
 FAIL_ON(mode.force != DRM_FORCE_OFF);

 return 0;
}
