
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {scalar_t__ private; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {TYPE_2__* opstats; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* stats; } ;
struct TYPE_3__ {scalar_t__ n_bytes; scalar_t__ n_packets; } ;


 struct hfi1_devdata* dd_from_dev (struct hfi1_ibdev*) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int opcode_stats_show (struct seq_file*,scalar_t__,int ,int ) ;

__attribute__((used)) static int _opcode_stats_seq_show(struct seq_file *s, void *v)
{
 loff_t *spos = v;
 loff_t i = *spos, j;
 u64 n_packets = 0, n_bytes = 0;
 struct hfi1_ibdev *ibd = (struct hfi1_ibdev *)s->private;
 struct hfi1_devdata *dd = dd_from_dev(ibd);
 struct hfi1_ctxtdata *rcd;

 for (j = 0; j < dd->first_dyn_alloc_ctxt; j++) {
  rcd = hfi1_rcd_get_by_index(dd, j);
  if (rcd) {
   n_packets += rcd->opstats->stats[i].n_packets;
   n_bytes += rcd->opstats->stats[i].n_bytes;
  }
  hfi1_rcd_put(rcd);
 }
 return opcode_stats_show(s, i, n_packets, n_bytes);
}
