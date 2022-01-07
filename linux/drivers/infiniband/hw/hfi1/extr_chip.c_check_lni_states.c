
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_pportdata {int dd; } ;


 int decode_state_complete (struct hfi1_pportdata*,scalar_t__,char*) ;
 int read_last_local_state (int ,scalar_t__*) ;
 int read_last_remote_state (int ,scalar_t__*) ;

__attribute__((used)) static void check_lni_states(struct hfi1_pportdata *ppd)
{
 u32 last_local_state;
 u32 last_remote_state;

 read_last_local_state(ppd->dd, &last_local_state);
 read_last_remote_state(ppd->dd, &last_remote_state);






 if (last_local_state == 0 && last_remote_state == 0)
  return;

 decode_state_complete(ppd, last_local_state, "transmitted");
 decode_state_complete(ppd, last_remote_state, "received");
}
