
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct_channel {int vma; int owner; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int dummy; } ;


 int DRM_ERROR (char*,int ,int) ;
 int GEM_BUG_ON (int) ;
 struct intel_guc* ct_to_guc (struct intel_guc_ct*) ;
 int ctch_init (struct intel_guc*,struct intel_guc_ct_channel*) ;
 scalar_t__ unlikely (int) ;

int intel_guc_ct_init(struct intel_guc_ct *ct)
{
 struct intel_guc *guc = ct_to_guc(ct);
 struct intel_guc_ct_channel *ctch = &ct->host_channel;
 int err;

 err = ctch_init(guc, ctch);
 if (unlikely(err)) {
  DRM_ERROR("CT: can't open channel %d; err=%d\n",
     ctch->owner, err);
  return err;
 }

 GEM_BUG_ON(!ctch->vma);
 return 0;
}
