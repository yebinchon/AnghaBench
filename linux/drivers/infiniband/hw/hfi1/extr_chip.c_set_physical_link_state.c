
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int HCMD_CHANGE_PHY_STATE ;
 int do_8051_command (struct hfi1_devdata*,int ,int ,int *) ;

__attribute__((used)) static int set_physical_link_state(struct hfi1_devdata *dd, u64 state)
{
 return do_8051_command(dd, HCMD_CHANGE_PHY_STATE, state, ((void*)0));
}
