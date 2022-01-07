
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_sseu {int dummy; } ;
struct intel_context {struct intel_sseu sseu; TYPE_1__* engine; } ;
typedef int sseu ;
struct TYPE_2__ {int i915; } ;


 int GEM_BUG_ON (int) ;
 int INTEL_GEN (int ) ;
 int gen8_modify_rpcs (struct intel_context*,struct intel_sseu) ;
 int intel_context_lock_pinned (struct intel_context*) ;
 int intel_context_unlock_pinned (struct intel_context*) ;
 int memcmp (struct intel_sseu*,struct intel_sseu*,int) ;

__attribute__((used)) static int
__intel_context_reconfigure_sseu(struct intel_context *ce,
     struct intel_sseu sseu)
{
 int ret;

 GEM_BUG_ON(INTEL_GEN(ce->engine->i915) < 8);

 ret = intel_context_lock_pinned(ce);
 if (ret)
  return ret;


 if (!memcmp(&ce->sseu, &sseu, sizeof(sseu)))
  goto unlock;

 ret = gen8_modify_rpcs(ce, sseu);
 if (!ret)
  ce->sseu = sseu;

unlock:
 intel_context_unlock_pinned(ce);
 return ret;
}
