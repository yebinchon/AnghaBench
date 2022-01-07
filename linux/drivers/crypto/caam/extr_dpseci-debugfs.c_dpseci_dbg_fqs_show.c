
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* u32 ;
struct seq_file {scalar_t__ private; } ;
struct dpaa2_caam_priv {int num_pairs; TYPE_2__* tx_queue_attr; TYPE_1__* rx_queue_attr; int dev; } ;
struct TYPE_4__ {char* fqid; } ;
struct TYPE_3__ {char* fqid; } ;


 int dev_name (int ) ;
 int dpaa2_io_query_fq_count (int *,char*,char**,char**) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;

__attribute__((used)) static int dpseci_dbg_fqs_show(struct seq_file *file, void *offset)
{
 struct dpaa2_caam_priv *priv = (struct dpaa2_caam_priv *)file->private;
 u32 fqid, fcnt, bcnt;
 int i, err;

 seq_printf(file, "FQ stats for %s:\n", dev_name(priv->dev));
 seq_printf(file, "%s%16s%16s\n",
     "Rx-VFQID",
     "Pending frames",
     "Pending bytes");

 for (i = 0; i < priv->num_pairs; i++) {
  fqid = priv->rx_queue_attr[i].fqid;
  err = dpaa2_io_query_fq_count(((void*)0), fqid, &fcnt, &bcnt);
  if (err)
   continue;

  seq_printf(file, "%5d%16u%16u\n", fqid, fcnt, bcnt);
 }

 seq_printf(file, "%s%16s%16s\n",
     "Tx-VFQID",
     "Pending frames",
     "Pending bytes");

 for (i = 0; i < priv->num_pairs; i++) {
  fqid = priv->tx_queue_attr[i].fqid;
  err = dpaa2_io_query_fq_count(((void*)0), fqid, &fcnt, &bcnt);
  if (err)
   continue;

  seq_printf(file, "%5d%16u%16u\n", fqid, fcnt, bcnt);
 }

 return 0;
}
