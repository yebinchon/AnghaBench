
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int fw_domains; int fw_domains_active; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int GEM_BUG_ON (int) ;
 int ___force_wake_auto (struct intel_uncore*,int) ;

__attribute__((used)) static inline void __force_wake_auto(struct intel_uncore *uncore,
         enum forcewake_domains fw_domains)
{
 GEM_BUG_ON(!fw_domains);


 fw_domains &= uncore->fw_domains;
 fw_domains &= ~uncore->fw_domains_active;

 if (fw_domains)
  ___force_wake_auto(uncore, fw_domains);
}
