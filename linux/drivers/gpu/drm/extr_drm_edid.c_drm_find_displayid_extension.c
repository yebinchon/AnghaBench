
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int dummy; } ;


 int DISPLAYID_EXT ;
 int * drm_find_edid_extension (struct edid const*,int ) ;

__attribute__((used)) static u8 *drm_find_displayid_extension(const struct edid *edid)
{
 return drm_find_edid_extension(edid, DISPLAYID_EXT);
}
