
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct_channel {int enabled; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int dummy; } ;


 struct intel_guc* ct_to_guc (struct intel_guc_ct*) ;
 int ctch_disable (struct intel_guc*,struct intel_guc_ct_channel*) ;

void intel_guc_ct_disable(struct intel_guc_ct *ct)
{
 struct intel_guc *guc = ct_to_guc(ct);
 struct intel_guc_ct_channel *ctch = &ct->host_channel;

 if (!ctch->enabled)
  return;

 ctch_disable(guc, ctch);
}
