
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int dummy; } ;


 int drm_for_each_detailed_block (int *,int ,char**) ;
 int monitor_name ;

__attribute__((used)) static int get_monitor_name(struct edid *edid, char name[13])
{
 char *edid_name = ((void*)0);
 int mnl;

 if (!edid || !name)
  return 0;

 drm_for_each_detailed_block((u8 *)edid, monitor_name, &edid_name);
 for (mnl = 0; edid_name && mnl < 13; mnl++) {
  if (edid_name[mnl] == 0x0a)
   break;

  name[mnl] = edid_name[mnl];
 }

 return mnl;
}
