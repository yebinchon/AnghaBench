
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int dd; } ;


 int chip_to_opa_pstate (int ,int ) ;
 int dd_dev_info (int ,char*,int ,int ,int ) ;
 int opa_pstate_name (int ) ;

__attribute__((used)) static void log_state_transition(struct hfi1_pportdata *ppd, u32 state)
{
 u32 ib_pstate = chip_to_opa_pstate(ppd->dd, state);

 dd_dev_info(ppd->dd,
      "physical state changed to %s (0x%x), phy 0x%x\n",
      opa_pstate_name(ib_pstate), ib_pstate, state);
}
