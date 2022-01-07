
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int GENERAL_CONFIG ;
 int LAST_REMOTE_STATE_COMPLETE ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int *) ;

__attribute__((used)) static void read_last_remote_state(struct hfi1_devdata *dd, u32 *lrs)
{
 read_8051_config(dd, LAST_REMOTE_STATE_COMPLETE, GENERAL_CONFIG, lrs);
}
