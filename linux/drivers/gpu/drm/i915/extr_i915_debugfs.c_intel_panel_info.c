
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct intel_panel {struct drm_display_mode* fixed_mode; } ;
struct drm_display_mode {int dummy; } ;


 int intel_seq_print_mode (struct seq_file*,int,struct drm_display_mode*) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void intel_panel_info(struct seq_file *m, struct intel_panel *panel)
{
 struct drm_display_mode *mode = panel->fixed_mode;

 seq_printf(m, "\tfixed mode:\n");
 intel_seq_print_mode(m, 2, mode);
}
