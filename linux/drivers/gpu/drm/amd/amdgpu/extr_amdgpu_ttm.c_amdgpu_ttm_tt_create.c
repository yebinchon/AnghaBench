
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_buffer_object {int bdev; } ;
struct TYPE_2__ {struct ttm_tt ttm; } ;
struct amdgpu_ttm_tt {TYPE_1__ ttm; } ;
struct amdgpu_device {int dummy; } ;


 int GFP_KERNEL ;
 int amdgpu_backend_func ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int kfree (struct amdgpu_ttm_tt*) ;
 struct amdgpu_ttm_tt* kzalloc (int,int ) ;
 scalar_t__ ttm_sg_tt_init (TYPE_1__*,struct ttm_buffer_object*,int ) ;

__attribute__((used)) static struct ttm_tt *amdgpu_ttm_tt_create(struct ttm_buffer_object *bo,
        uint32_t page_flags)
{
 struct amdgpu_device *adev;
 struct amdgpu_ttm_tt *gtt;

 adev = amdgpu_ttm_adev(bo->bdev);

 gtt = kzalloc(sizeof(struct amdgpu_ttm_tt), GFP_KERNEL);
 if (gtt == ((void*)0)) {
  return ((void*)0);
 }
 gtt->ttm.ttm.func = &amdgpu_backend_func;


 if (ttm_sg_tt_init(&gtt->ttm, bo, page_flags)) {
  kfree(gtt);
  return ((void*)0);
 }
 return &gtt->ttm.ttm;
}
