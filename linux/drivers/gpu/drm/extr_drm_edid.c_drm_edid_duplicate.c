
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int extensions; } ;


 int EDID_LENGTH ;
 int GFP_KERNEL ;
 struct edid* kmemdup (struct edid const*,int,int ) ;

struct edid *drm_edid_duplicate(const struct edid *edid)
{
 return kmemdup(edid, (edid->extensions + 1) * EDID_LENGTH, GFP_KERNEL);
}
