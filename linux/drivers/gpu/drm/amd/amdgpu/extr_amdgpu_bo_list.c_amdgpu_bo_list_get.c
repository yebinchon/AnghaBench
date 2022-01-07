
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_fpriv {int bo_list_handles; } ;
struct amdgpu_bo_list {int refcount; } ;


 int ENOENT ;
 struct amdgpu_bo_list* idr_find (int *,int) ;
 scalar_t__ kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int amdgpu_bo_list_get(struct amdgpu_fpriv *fpriv, int id,
         struct amdgpu_bo_list **result)
{
 rcu_read_lock();
 *result = idr_find(&fpriv->bo_list_handles, id);

 if (*result && kref_get_unless_zero(&(*result)->refcount)) {
  rcu_read_unlock();
  return 0;
 }

 rcu_read_unlock();
 return -ENOENT;
}
