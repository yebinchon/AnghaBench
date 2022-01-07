
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {int * file_priv; int client_link; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_file_private {TYPE_1__ mm; } ;


 struct drm_i915_file_private* READ_ONCE (int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
remove_from_client(struct i915_request *request)
{
 struct drm_i915_file_private *file_priv;

 file_priv = READ_ONCE(request->file_priv);
 if (!file_priv)
  return;

 spin_lock(&file_priv->mm.lock);
 if (request->file_priv) {
  list_del(&request->client_link);
  request->file_priv = ((void*)0);
 }
 spin_unlock(&file_priv->mm.lock);
}
