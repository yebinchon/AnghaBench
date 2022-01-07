
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;
struct cntr_entry {int flags; int (* rw_cntr ) (struct cntr_entry*,void*,int,int ,int) ;int name; } ;


 int CNTR ;
 int CNTR_32BIT ;
 int CNTR_DISABLED ;
 int CNTR_MODE_W ;
 int CNTR_SYNTH ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int hfi1_cdbg (int ,char*,int,...) ;
 int stub1 (struct cntr_entry*,void*,int,int ,int) ;
 int stub2 (struct cntr_entry*,void*,int,int ,int) ;
 int stub3 (struct cntr_entry*,void*,int,int ,int) ;

__attribute__((used)) static u64 write_dev_port_cntr(struct hfi1_devdata *dd,
          struct cntr_entry *entry,
          u64 *psval, void *context, int vl, u64 data)
{
 u64 val;

 if (entry->flags & CNTR_DISABLED) {
  dd_dev_err(dd, "Counter %s not enabled", entry->name);
  return 0;
 }

 hfi1_cdbg(CNTR, "cntr: %s vl %d psval 0x%llx", entry->name, vl, *psval);

 if (entry->flags & CNTR_SYNTH) {
  *psval = data;
  if (entry->flags & CNTR_32BIT) {
   val = entry->rw_cntr(entry, context, vl, CNTR_MODE_W,
          (data << 32) >> 32);
   val = data;
  } else {
   val = entry->rw_cntr(entry, context, vl, CNTR_MODE_W,
          data);
  }
 } else {
  val = entry->rw_cntr(entry, context, vl, CNTR_MODE_W, data);
 }

 *psval = val;

 hfi1_cdbg(CNTR, "\tNew val=0x%llx", val);

 return val;
}
