
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct_channel {scalar_t__ enabled; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int dummy; } ;


 struct intel_guc* ct_to_guc (struct intel_guc_ct*) ;
 int ctch_enable (struct intel_guc*,struct intel_guc_ct_channel*) ;

int intel_guc_ct_enable(struct intel_guc_ct *ct)
{
 struct intel_guc *guc = ct_to_guc(ct);
 struct intel_guc_ct_channel *ctch = &ct->host_channel;

 if (ctch->enabled)
  return 0;

 return ctch_enable(guc, ctch);
}
