
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_fpriv {int bo_list_lock; int bo_list_handles; } ;
struct amdgpu_bo_list {int refcount; } ;


 int amdgpu_bo_list_free ;
 struct amdgpu_bo_list* idr_remove (int *,int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void amdgpu_bo_list_destroy(struct amdgpu_fpriv *fpriv, int id)
{
 struct amdgpu_bo_list *list;

 mutex_lock(&fpriv->bo_list_lock);
 list = idr_remove(&fpriv->bo_list_handles, id);
 mutex_unlock(&fpriv->bo_list_lock);
 if (list)
  kref_put(&list->refcount, amdgpu_bo_list_free);
}
