
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum psci_conduit { ____Placeholder_psci_conduit } psci_conduit ;
struct TYPE_2__ {int conduit; } ;




 int WARN (int,char*,int) ;
 int __invoke_psci_fn_hvc ;
 int __invoke_psci_fn_smc ;
 int invoke_psci_fn ;
 TYPE_1__ psci_ops ;

__attribute__((used)) static void set_conduit(enum psci_conduit conduit)
{
 switch (conduit) {
 case 129:
  invoke_psci_fn = __invoke_psci_fn_hvc;
  break;
 case 128:
  invoke_psci_fn = __invoke_psci_fn_smc;
  break;
 default:
  WARN(1, "Unexpected PSCI conduit %d\n", conduit);
 }

 psci_ops.conduit = conduit;
}
