
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int dummy; } ;


 int FAIL_ON (int ) ;
 int drm_mode_parse_command_line_for_connector (char*,int *,struct drm_cmdline_mode*) ;
 int no_connector ;

__attribute__((used)) static int drm_cmdline_test_margin_only(void *ignored)
{
 struct drm_cmdline_mode mode = { };

 FAIL_ON(drm_mode_parse_command_line_for_connector("m",
         &no_connector,
         &mode));

 return 0;
}
