
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct intel_connector {int panel; } ;


 int intel_panel_info (struct seq_file*,int *) ;

__attribute__((used)) static void intel_lvds_info(struct seq_file *m,
       struct intel_connector *intel_connector)
{
 intel_panel_info(m, &intel_connector->panel);
}
