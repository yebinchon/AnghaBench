
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int EPERM ;

__attribute__((used)) static inline int amdgpu_ttm_tt_get_user_pages(struct amdgpu_bo *bo,
            struct page **pages)
{
 return -EPERM;
}
