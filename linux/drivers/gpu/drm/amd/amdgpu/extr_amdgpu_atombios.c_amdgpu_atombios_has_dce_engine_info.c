
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct atom_context {scalar_t__ bios; } ;
struct amdgpu_mode_info {struct atom_context* atom_context; } ;
struct amdgpu_device {struct amdgpu_mode_info mode_info; } ;
struct TYPE_4__ {scalar_t__ ucNumOfDispPath; } ;
struct TYPE_3__ {int usDisplayPathTableOffset; } ;
typedef TYPE_1__ ATOM_OBJECT_HEADER ;
typedef TYPE_2__ ATOM_DISPLAY_OBJECT_PATH_TABLE ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int Object_Header ;
 int amdgpu_atom_parse_data_header (struct atom_context*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 scalar_t__ le16_to_cpu (int ) ;

bool amdgpu_atombios_has_dce_engine_info(struct amdgpu_device *adev)
{
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 struct atom_context *ctx = mode_info->atom_context;
 int index = GetIndexIntoMasterTable(DATA, Object_Header);
 u16 size, data_offset;
 u8 frev, crev;
 ATOM_DISPLAY_OBJECT_PATH_TABLE *path_obj;
 ATOM_OBJECT_HEADER *obj_header;

 if (!amdgpu_atom_parse_data_header(ctx, index, &size, &frev, &crev, &data_offset))
  return 0;

 if (crev < 2)
  return 0;

 obj_header = (ATOM_OBJECT_HEADER *) (ctx->bios + data_offset);
 path_obj = (ATOM_DISPLAY_OBJECT_PATH_TABLE *)
     (ctx->bios + data_offset +
      le16_to_cpu(obj_header->usDisplayPathTableOffset));

 if (path_obj->ucNumOfDispPath)
  return 1;
 else
  return 0;
}
