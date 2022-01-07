
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_core_data {int dummy; } ;
struct csc_table {int member_0; } ;


 struct csc_table* csc_table_deepcolor ;
 int hdmi_core_csc_config (struct hdmi_core_data*,struct csc_table) ;

__attribute__((used)) static void hdmi_core_configure_range(struct hdmi_core_data *core)
{
 struct csc_table csc_coeff = { 0 };


 csc_coeff = csc_table_deepcolor[0];

 hdmi_core_csc_config(core, csc_coeff);
}
