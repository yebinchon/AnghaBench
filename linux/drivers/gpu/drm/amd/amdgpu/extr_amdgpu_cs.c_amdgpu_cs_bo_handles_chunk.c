
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_amdgpu_bo_list_in {int bo_number; } ;
struct drm_amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_cs_parser {int bo_list; int filp; int adev; } ;


 int amdgpu_bo_create_list_entry_array (struct drm_amdgpu_bo_list_in*,struct drm_amdgpu_bo_list_entry**) ;
 int amdgpu_bo_list_create (int ,int ,struct drm_amdgpu_bo_list_entry*,int ,int *) ;
 int kvfree (struct drm_amdgpu_bo_list_entry*) ;

__attribute__((used)) static int amdgpu_cs_bo_handles_chunk(struct amdgpu_cs_parser *p,
          struct drm_amdgpu_bo_list_in *data)
{
 int r;
 struct drm_amdgpu_bo_list_entry *info = ((void*)0);

 r = amdgpu_bo_create_list_entry_array(data, &info);
 if (r)
  return r;

 r = amdgpu_bo_list_create(p->adev, p->filp, info, data->bo_number,
      &p->bo_list);
 if (r)
  goto error_free;

 kvfree(info);
 return 0;

error_free:
 if (info)
  kvfree(info);

 return r;
}
