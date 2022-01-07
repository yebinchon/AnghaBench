
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;


 int get_monitor_name (struct edid*,char*) ;
 int memcpy (char*,char*,int) ;
 int min (int ,int) ;

void drm_edid_get_monitor_name(struct edid *edid, char *name, int bufsize)
{
 int name_length;
 char buf[13];

 if (bufsize <= 0)
  return;

 name_length = min(get_monitor_name(edid, buf), bufsize - 1);
 memcpy(name, buf, name_length);
 name[name_length] = '\0';
}
