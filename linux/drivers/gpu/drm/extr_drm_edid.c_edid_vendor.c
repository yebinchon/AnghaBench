
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int* mfg_id; } ;


 int strncmp (char*,char const*,int) ;

__attribute__((used)) static bool edid_vendor(const struct edid *edid, const char *vendor)
{
 char edid_vendor[3];

 edid_vendor[0] = ((edid->mfg_id[0] & 0x7c) >> 2) + '@';
 edid_vendor[1] = (((edid->mfg_id[0] & 0x3) << 3) |
     ((edid->mfg_id[1] & 0xe0) >> 5)) + '@';
 edid_vendor[2] = (edid->mfg_id[1] & 0x1f) + '@';

 return !strncmp(edid_vendor, vendor, 3);
}
