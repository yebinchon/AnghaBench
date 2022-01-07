
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_name; } ;
struct ras_manager {TYPE_1__ fs_data; scalar_t__ ent; } ;
struct ras_fs_if {int debugfs_name; int head; } ;
struct amdgpu_ras {int dir; } ;
struct amdgpu_device {int dummy; } ;


 int S_IRUGO ;
 int S_IWUGO ;
 int amdgpu_ras_debugfs_ops ;
 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,int *) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 scalar_t__ debugfs_create_file (int ,int,int ,struct ras_manager*,int *) ;
 int get_obj (struct ras_manager*) ;
 int memcpy (int ,int ,int) ;

void amdgpu_ras_debugfs_create(struct amdgpu_device *adev,
  struct ras_fs_if *head)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, &head->head);

 if (!obj || obj->ent)
  return;

 get_obj(obj);

 memcpy(obj->fs_data.debugfs_name,
   head->debugfs_name,
   sizeof(obj->fs_data.debugfs_name));

 obj->ent = debugfs_create_file(obj->fs_data.debugfs_name,
           S_IWUGO | S_IRUGO, con->dir, obj,
           &amdgpu_ras_debugfs_ops);
}
