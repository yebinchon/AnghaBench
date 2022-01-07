
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_guc {scalar_t__ execbuf_client; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct TYPE_4__ {struct intel_guc guc; } ;
struct TYPE_5__ {TYPE_1__ uc; } ;
struct drm_i915_private {TYPE_3__ drm; int runtime_pm; TYPE_2__ gt; } ;
typedef int intel_wakeref_t ;


 int EINVAL ;
 int GEM_BUG_ON (int) ;
 int GUC_CLIENT_PRIORITY_KMD_NORMAL ;
 int HAS_GT_UC (struct drm_i915_private*) ;
 int check_all_doorbells (struct intel_guc*) ;
 int client_doorbell_in_sync (scalar_t__) ;
 int create_doorbell (scalar_t__) ;
 int guc_clients_create (struct intel_guc*) ;
 int guc_clients_destroy (struct intel_guc*) ;
 int guc_clients_disable (struct intel_guc*) ;
 int guc_clients_enable (struct intel_guc*) ;
 int has_doorbell (scalar_t__) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int validate_client (scalar_t__,int ) ;

__attribute__((used)) static int igt_guc_clients(void *args)
{
 struct drm_i915_private *dev_priv = args;
 intel_wakeref_t wakeref;
 struct intel_guc *guc;
 int err = 0;

 GEM_BUG_ON(!HAS_GT_UC(dev_priv));
 mutex_lock(&dev_priv->drm.struct_mutex);
 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 guc = &dev_priv->gt.uc.guc;
 if (!guc) {
  pr_err("No guc object!\n");
  err = -EINVAL;
  goto unlock;
 }

 err = check_all_doorbells(guc);
 if (err)
  goto unlock;





 guc_clients_disable(guc);
 guc_clients_destroy(guc);
 if (guc->execbuf_client) {
  pr_err("guc_clients_destroy lied!\n");
  err = -EINVAL;
  goto unlock;
 }

 err = guc_clients_create(guc);
 if (err) {
  pr_err("Failed to create clients\n");
  goto unlock;
 }
 GEM_BUG_ON(!guc->execbuf_client);

 err = validate_client(guc->execbuf_client,
         GUC_CLIENT_PRIORITY_KMD_NORMAL);
 if (err) {
  pr_err("execbug client validation failed\n");
  goto out;
 }


 if (!has_doorbell(guc->execbuf_client)) {
  pr_err("guc_clients_create didn't reserve doorbells\n");
  err = -EINVAL;
  goto out;
 }


 guc_clients_enable(guc);


 if (!client_doorbell_in_sync(guc->execbuf_client)) {
  pr_err("failed to initialize the doorbells\n");
  err = -EINVAL;
  goto out;
 }





 err = create_doorbell(guc->execbuf_client);

out:




 guc_clients_disable(guc);
 guc_clients_destroy(guc);
 guc_clients_create(guc);
 guc_clients_enable(guc);
unlock:
 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 mutex_unlock(&dev_priv->drm.struct_mutex);
 return err;
}
