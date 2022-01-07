
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hfi1_pportdata {TYPE_1__* dd; int * scntrs; } ;
struct cntr_entry {int offset; } ;
struct TYPE_2__ {int num_rcv_contexts; } ;


 int CNTR_INVALID_VL ;
 int C_RCV_HDR_OVF_FIRST ;
 int C_RCV_HDR_OVF_LAST ;
 struct cntr_entry* port_cntrs ;
 int write_dev_port_cntr (TYPE_1__*,struct cntr_entry*,int *,struct hfi1_pportdata*,int,int ) ;

u64 write_port_cntr(struct hfi1_pportdata *ppd, int index, int vl, u64 data)
{
 struct cntr_entry *entry;
 u64 *sval;

 entry = &port_cntrs[index];
 sval = ppd->scntrs + entry->offset;

 if (vl != CNTR_INVALID_VL)
  sval += vl;

 if ((index >= C_RCV_HDR_OVF_FIRST + ppd->dd->num_rcv_contexts) &&
     (index <= C_RCV_HDR_OVF_LAST)) {

  return 0;
 }

 return write_dev_port_cntr(ppd->dd, entry, sval, ppd, vl, data);
}
