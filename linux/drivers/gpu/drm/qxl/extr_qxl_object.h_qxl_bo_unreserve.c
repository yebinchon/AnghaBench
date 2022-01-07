
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_bo {int tbo; } ;


 int ttm_bo_unreserve (int *) ;

__attribute__((used)) static inline void qxl_bo_unreserve(struct qxl_bo *bo)
{
 ttm_bo_unreserve(&bo->tbo);
}
