
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;
struct cntr_entry {int flags; int (* rw_cntr ) (struct cntr_entry*,void*,int,int ,int ) ;int name; } ;


 int CNTR ;
 int CNTR_32BIT ;
 int CNTR_32BIT_MAX ;
 int CNTR_DISABLED ;
 int CNTR_MAX ;
 int CNTR_MODE_R ;
 int CNTR_SYNTH ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int hfi1_cdbg (int ,char*,int,...) ;
 int stub1 (struct cntr_entry*,void*,int,int ,int ) ;

__attribute__((used)) static u64 read_dev_port_cntr(struct hfi1_devdata *dd, struct cntr_entry *entry,
         u64 *psval, void *context, int vl)
{
 u64 val;
 u64 sval = *psval;

 if (entry->flags & CNTR_DISABLED) {
  dd_dev_err(dd, "Counter %s not enabled", entry->name);
  return 0;
 }

 hfi1_cdbg(CNTR, "cntr: %s vl %d psval 0x%llx", entry->name, vl, *psval);

 val = entry->rw_cntr(entry, context, vl, CNTR_MODE_R, 0);


 if (entry->flags & CNTR_SYNTH) {
  if (sval == CNTR_MAX) {

   return CNTR_MAX;
  }

  if (entry->flags & CNTR_32BIT) {

   u64 upper = sval >> 32;
   u64 lower = (sval << 32) >> 32;

   if (lower > val) {
    if (upper == CNTR_32BIT_MAX)
     val = CNTR_MAX;
    else
     upper++;
   }

   if (val != CNTR_MAX)
    val = (upper << 32) | val;

  } else {

   if ((val < sval) || (val > CNTR_MAX))
    val = CNTR_MAX;
  }
 }

 *psval = val;

 hfi1_cdbg(CNTR, "\tNew val=0x%llx", val);

 return val;
}
