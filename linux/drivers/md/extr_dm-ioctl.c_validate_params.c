
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct dm_ioctl {char* name; char* uuid; int flags; } ;


 int DMWARN (char*,...) ;
 int DM_BUFFER_FULL_FLAG ;
 int DM_DATA_OUT_FLAG ;
 scalar_t__ DM_DEV_CREATE_CMD ;
 scalar_t__ DM_LIST_DEVICES_CMD ;
 scalar_t__ DM_LIST_VERSIONS_CMD ;
 int DM_NAME_LEN ;
 scalar_t__ DM_REMOVE_ALL_CMD ;
 int DM_SECURE_DATA_FLAG ;
 int DM_UEVENT_GENERATED_FLAG ;
 int DM_UUID_LEN ;
 int EINVAL ;

__attribute__((used)) static int validate_params(uint cmd, struct dm_ioctl *param)
{

 param->flags &= ~DM_BUFFER_FULL_FLAG;
 param->flags &= ~DM_UEVENT_GENERATED_FLAG;
 param->flags &= ~DM_SECURE_DATA_FLAG;
 param->flags &= ~DM_DATA_OUT_FLAG;


 if (cmd == DM_REMOVE_ALL_CMD ||
     cmd == DM_LIST_DEVICES_CMD ||
     cmd == DM_LIST_VERSIONS_CMD)
  return 0;

 if (cmd == DM_DEV_CREATE_CMD) {
  if (!*param->name) {
   DMWARN("name not supplied when creating device");
   return -EINVAL;
  }
 } else if (*param->uuid && *param->name) {
  DMWARN("only supply one of name or uuid, cmd(%u)", cmd);
  return -EINVAL;
 }


 param->name[DM_NAME_LEN - 1] = '\0';
 param->uuid[DM_UUID_LEN - 1] = '\0';

 return 0;
}
