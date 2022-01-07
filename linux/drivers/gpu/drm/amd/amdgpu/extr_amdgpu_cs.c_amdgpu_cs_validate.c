
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_cs_parser {int dummy; } ;
struct amdgpu_bo {struct amdgpu_bo* shadow; } ;


 int ENOMEM ;
 int amdgpu_cs_bo_validate (struct amdgpu_cs_parser*,struct amdgpu_bo*) ;
 scalar_t__ amdgpu_cs_try_evict (struct amdgpu_cs_parser*,struct amdgpu_bo*) ;

__attribute__((used)) static int amdgpu_cs_validate(void *param, struct amdgpu_bo *bo)
{
 struct amdgpu_cs_parser *p = param;
 int r;

 do {
  r = amdgpu_cs_bo_validate(p, bo);
 } while (r == -ENOMEM && amdgpu_cs_try_evict(p, bo));
 if (r)
  return r;

 if (bo->shadow)
  r = amdgpu_cs_bo_validate(p, bo->shadow);

 return r;
}
