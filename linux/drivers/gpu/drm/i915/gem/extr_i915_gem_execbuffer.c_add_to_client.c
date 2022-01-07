
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {int client_link; struct drm_i915_file_private* file_priv; } ;
struct TYPE_2__ {int lock; int request_list; } ;
struct drm_i915_file_private {TYPE_1__ mm; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
add_to_client(struct i915_request *rq, struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;

 rq->file_priv = file_priv;

 spin_lock(&file_priv->mm.lock);
 list_add_tail(&rq->client_link, &file_priv->mm.request_list);
 spin_unlock(&file_priv->mm.lock);
}
