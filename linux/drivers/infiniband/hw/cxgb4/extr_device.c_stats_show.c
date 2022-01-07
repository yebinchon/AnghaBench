
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct seq_file {struct c4iw_dev* private; } ;
struct TYPE_16__ {int fail; int max; int cur; int total; } ;
struct TYPE_15__ {int fail; int max; int cur; int total; } ;
struct TYPE_14__ {int fail; int max; int cur; int total; } ;
struct TYPE_13__ {int fail; int max; int cur; int total; } ;
struct TYPE_12__ {int fail; int max; int cur; int total; } ;
struct TYPE_11__ {int fail; int max; int cur; int total; } ;
struct TYPE_10__ {int fail; int max; int cur; int total; } ;
struct TYPE_17__ {int neg_adv; int pas_ofld_conn_fails; int act_ofld_conn_fails; int tcam_full; int db_fc_interruptions; int db_state_transitions; int db_drop; int db_empty; int db_full; TYPE_7__ ocqp; TYPE_6__ rqt; TYPE_5__ pbl; TYPE_4__ stag; TYPE_3__ srqt; TYPE_2__ qid; TYPE_1__ pd; } ;
struct TYPE_18__ {TYPE_8__ stats; } ;
struct c4iw_dev {size_t db_state; int avail_ird; TYPE_9__ rdev; } ;


 int * db_state_str ;
 int seq_printf (struct seq_file*,char*,char*,...) ;

__attribute__((used)) static int stats_show(struct seq_file *seq, void *v)
{
 struct c4iw_dev *dev = seq->private;

 seq_printf(seq, "   Object: %10s %10s %10s %10s\n", "Total", "Current",
     "Max", "Fail");
 seq_printf(seq, "     PDID: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.pd.total, dev->rdev.stats.pd.cur,
   dev->rdev.stats.pd.max, dev->rdev.stats.pd.fail);
 seq_printf(seq, "      QID: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.qid.total, dev->rdev.stats.qid.cur,
   dev->rdev.stats.qid.max, dev->rdev.stats.qid.fail);
 seq_printf(seq, "     SRQS: %10llu %10llu %10llu %10llu\n",
     dev->rdev.stats.srqt.total, dev->rdev.stats.srqt.cur,
   dev->rdev.stats.srqt.max, dev->rdev.stats.srqt.fail);
 seq_printf(seq, "   TPTMEM: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.stag.total, dev->rdev.stats.stag.cur,
   dev->rdev.stats.stag.max, dev->rdev.stats.stag.fail);
 seq_printf(seq, "   PBLMEM: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.pbl.total, dev->rdev.stats.pbl.cur,
   dev->rdev.stats.pbl.max, dev->rdev.stats.pbl.fail);
 seq_printf(seq, "   RQTMEM: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.rqt.total, dev->rdev.stats.rqt.cur,
   dev->rdev.stats.rqt.max, dev->rdev.stats.rqt.fail);
 seq_printf(seq, "  OCQPMEM: %10llu %10llu %10llu %10llu\n",
   dev->rdev.stats.ocqp.total, dev->rdev.stats.ocqp.cur,
   dev->rdev.stats.ocqp.max, dev->rdev.stats.ocqp.fail);
 seq_printf(seq, "  DB FULL: %10llu\n", dev->rdev.stats.db_full);
 seq_printf(seq, " DB EMPTY: %10llu\n", dev->rdev.stats.db_empty);
 seq_printf(seq, "  DB DROP: %10llu\n", dev->rdev.stats.db_drop);
 seq_printf(seq, " DB State: %s Transitions %llu FC Interruptions %llu\n",
     db_state_str[dev->db_state],
     dev->rdev.stats.db_state_transitions,
     dev->rdev.stats.db_fc_interruptions);
 seq_printf(seq, "TCAM_FULL: %10llu\n", dev->rdev.stats.tcam_full);
 seq_printf(seq, "ACT_OFLD_CONN_FAILS: %10llu\n",
     dev->rdev.stats.act_ofld_conn_fails);
 seq_printf(seq, "PAS_OFLD_CONN_FAILS: %10llu\n",
     dev->rdev.stats.pas_ofld_conn_fails);
 seq_printf(seq, "NEG_ADV_RCVD: %10llu\n", dev->rdev.stats.neg_adv);
 seq_printf(seq, "AVAILABLE IRD: %10u\n", dev->avail_ird);
 return 0;
}
