
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int bo; } ;


 int EINVAL ;
 struct nouveau_bo* nouveau_bo (int *) ;
 int ttm_bo_get (int *) ;
 int ttm_bo_put (int *) ;

__attribute__((used)) static inline int
nouveau_bo_ref(struct nouveau_bo *ref, struct nouveau_bo **pnvbo)
{
 struct nouveau_bo *prev;

 if (!pnvbo)
  return -EINVAL;
 prev = *pnvbo;

 if (ref) {
  ttm_bo_get(&ref->bo);
  *pnvbo = nouveau_bo(&ref->bo);
 } else {
  *pnvbo = ((void*)0);
 }
 if (prev)
  ttm_bo_put(&prev->bo);

 return 0;
}
