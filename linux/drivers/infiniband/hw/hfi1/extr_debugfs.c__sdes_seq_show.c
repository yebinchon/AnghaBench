
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {int * per_sdma; } ;
typedef size_t loff_t ;


 struct hfi1_devdata* dd_from_dev (struct hfi1_ibdev*) ;
 int sdma_seqfile_dump_sde (struct seq_file*,int *) ;

__attribute__((used)) static int _sdes_seq_show(struct seq_file *s, void *v)
{
 struct hfi1_ibdev *ibd = (struct hfi1_ibdev *)s->private;
 struct hfi1_devdata *dd = dd_from_dev(ibd);
 loff_t *spos = v;
 loff_t i = *spos;

 sdma_seqfile_dump_sde(s, &dd->per_sdma[i]);
 return 0;
}
