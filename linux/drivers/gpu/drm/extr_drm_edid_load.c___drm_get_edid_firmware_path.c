
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edid_firmware ;
 int scnprintf (char*,size_t,char*,int ) ;

int __drm_get_edid_firmware_path(char *buf, size_t bufsize)
{
 return scnprintf(buf, bufsize, "%s", edid_firmware);
}
