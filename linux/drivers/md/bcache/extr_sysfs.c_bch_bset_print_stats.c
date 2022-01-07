
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_set {int dummy; } ;
struct TYPE_2__ {int failed; int floats; int bytes_unwritten; int bytes_written; int sets_unwritten; int sets_written; } ;
struct bset_stats_op {TYPE_1__ stats; int nodes; int op; } ;
typedef int op ;


 int PAGE_SIZE ;
 int ZERO_KEY ;
 int bch_btree_bset_stats ;
 int bch_btree_map_nodes (int *,struct cache_set*,int *,int ) ;
 int bch_btree_op_init (int *,int) ;
 int memset (struct bset_stats_op*,int ,int) ;
 int snprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bch_bset_print_stats(struct cache_set *c, char *buf)
{
 struct bset_stats_op op;
 int ret;

 memset(&op, 0, sizeof(op));
 bch_btree_op_init(&op.op, -1);

 ret = bch_btree_map_nodes(&op.op, c, &ZERO_KEY, bch_btree_bset_stats);
 if (ret < 0)
  return ret;

 return snprintf(buf, PAGE_SIZE,
   "btree nodes:		%zu\n"
   "written sets:		%zu\n"
   "unwritten sets:		%zu\n"
   "written key bytes:	%zu\n"
   "unwritten key bytes:	%zu\n"
   "floats:			%zu\n"
   "failed:			%zu\n",
   op.nodes,
   op.stats.sets_written, op.stats.sets_unwritten,
   op.stats.bytes_written, op.stats.bytes_unwritten,
   op.stats.floats, op.stats.failed);
}
