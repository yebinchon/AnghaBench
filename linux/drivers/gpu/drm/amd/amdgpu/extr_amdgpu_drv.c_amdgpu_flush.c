
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct drm_file* private_data; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct amdgpu_fpriv {int vm; int ctx_mgr; } ;
typedef int fl_owner_t ;


 long MAX_WAIT_SCHED_ENTITY_Q_EMPTY ;
 long amdgpu_ctx_mgr_entity_flush (int *,long) ;
 long amdgpu_vm_wait_idle (int *,long) ;

__attribute__((used)) static int amdgpu_flush(struct file *f, fl_owner_t id)
{
 struct drm_file *file_priv = f->private_data;
 struct amdgpu_fpriv *fpriv = file_priv->driver_priv;
 long timeout = MAX_WAIT_SCHED_ENTITY_Q_EMPTY;

 timeout = amdgpu_ctx_mgr_entity_flush(&fpriv->ctx_mgr, timeout);
 timeout = amdgpu_vm_wait_idle(&fpriv->vm, timeout);

 return timeout >= 0 ? 0 : timeout;
}
