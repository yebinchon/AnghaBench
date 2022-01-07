
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_bo {int dummy; } ;


 int __qxl_bo_unpin (struct qxl_bo*) ;
 int qxl_bo_reserve (struct qxl_bo*,int) ;
 int qxl_bo_unreserve (struct qxl_bo*) ;

int qxl_bo_unpin(struct qxl_bo *bo)
{
 int r;

 r = qxl_bo_reserve(bo, 0);
 if (r)
  return r;

 r = __qxl_bo_unpin(bo);
 qxl_bo_unreserve(bo);
 return r;
}
