
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int extensions; } ;


 int EDID_LENGTH ;
 int drm_edid_block_valid (int *,int,int,int *) ;

bool drm_edid_is_valid(struct edid *edid)
{
 int i;
 u8 *raw = (u8 *)edid;

 if (!edid)
  return 0;

 for (i = 0; i <= edid->extensions; i++)
  if (!drm_edid_block_valid(raw + i * EDID_LENGTH, i, 1, ((void*)0)))
   return 0;

 return 1;
}
