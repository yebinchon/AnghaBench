
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int extensions; } ;


 int EDID_LENGTH ;

__attribute__((used)) static u8 *drm_find_edid_extension(const struct edid *edid, int ext_id)
{
 u8 *edid_ext = ((void*)0);
 int i;


 if (edid == ((void*)0) || edid->extensions == 0)
  return ((void*)0);


 for (i = 0; i < edid->extensions; i++) {
  edid_ext = (u8 *)edid + EDID_LENGTH * (i + 1);
  if (edid_ext[0] == ext_id)
   break;
 }

 if (i == edid->extensions)
  return ((void*)0);

 return edid_ext;
}
