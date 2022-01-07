
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {scalar_t__ new_map; scalar_t__ uuid; scalar_t__ name; } ;
struct dm_ioctl {char* uuid; char* name; int flags; scalar_t__ dev; } ;


 int DM_INACTIVE_PRESENT_FLAG ;
 struct hash_cell* __get_dev_cell (scalar_t__) ;
 struct hash_cell* __get_name_cell (char*) ;
 struct hash_cell* __get_uuid_cell (char*) ;
 int strlcpy (char*,scalar_t__,int) ;

__attribute__((used)) static struct hash_cell *__find_device_hash_cell(struct dm_ioctl *param)
{
 struct hash_cell *hc = ((void*)0);

 if (*param->uuid) {
  if (*param->name || param->dev)
   return ((void*)0);

  hc = __get_uuid_cell(param->uuid);
  if (!hc)
   return ((void*)0);
 } else if (*param->name) {
  if (param->dev)
   return ((void*)0);

  hc = __get_name_cell(param->name);
  if (!hc)
   return ((void*)0);
 } else if (param->dev) {
  hc = __get_dev_cell(param->dev);
  if (!hc)
   return ((void*)0);
 } else
  return ((void*)0);





 strlcpy(param->name, hc->name, sizeof(param->name));
 if (hc->uuid)
  strlcpy(param->uuid, hc->uuid, sizeof(param->uuid));
 else
  param->uuid[0] = '\0';

 if (hc->new_map)
  param->flags |= DM_INACTIVE_PRESENT_FLAG;
 else
  param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

 return hc;
}
