
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int * scntrs; } ;
struct cntr_entry {int offset; } ;


 int CNTR_INVALID_VL ;
 struct cntr_entry* dev_cntrs ;
 int write_dev_port_cntr (struct hfi1_devdata*,struct cntr_entry*,int *,struct hfi1_devdata*,int,int ) ;

u64 write_dev_cntr(struct hfi1_devdata *dd, int index, int vl, u64 data)
{
 struct cntr_entry *entry;
 u64 *sval;

 entry = &dev_cntrs[index];
 sval = dd->scntrs + entry->offset;

 if (vl != CNTR_INVALID_VL)
  sval += vl;

 return write_dev_port_cntr(dd, entry, sval, dd, vl, data);
}
