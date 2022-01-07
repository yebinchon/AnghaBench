
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor_hdmi_settings {unsigned long frequency; } ;
struct tegra_sor {unsigned int num_settings; struct tegra_sor_hdmi_settings* settings; } ;



__attribute__((used)) static struct tegra_sor_hdmi_settings *
tegra_sor_hdmi_find_settings(struct tegra_sor *sor, unsigned long frequency)
{
 unsigned int i;

 for (i = 0; i < sor->num_settings; i++)
  if (frequency <= sor->settings[i].frequency)
   return &sor->settings[i];

 return ((void*)0);
}
