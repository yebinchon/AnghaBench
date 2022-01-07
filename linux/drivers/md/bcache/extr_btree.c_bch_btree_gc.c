
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gc_stat {int key_bytes; int data; } ;
struct closure {int dummy; } ;
struct cache_set {int gc_stats; int btree_gc_time; int flags; } ;
struct btree_op {int dummy; } ;


 int CACHE_SET_IO_DISABLE ;
 int EAGAIN ;
 int GC_SLEEP_MS ;
 int SHRT_MAX ;
 int bch_btree_gc_finish (struct cache_set*) ;
 int bch_btree_op_init (struct btree_op*,int ) ;
 int bch_moving_gc (struct cache_set*) ;
 int bch_time_stats_update (int *,int ) ;
 int bch_update_bucket_in_use (struct cache_set*,struct gc_stat*) ;
 int btree_gc_start (struct cache_set*) ;
 int btree_root (int ,struct cache_set*,struct btree_op*,struct closure*,struct gc_stat*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int cond_resched () ;
 int gc_root ;
 int local_clock () ;
 int memcpy (int *,struct gc_stat*,int) ;
 int memset (struct gc_stat*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int pr_warn (char*) ;
 int schedule_timeout_interruptible (int ) ;
 int test_bit (int ,int *) ;
 int trace_bcache_gc_end (struct cache_set*) ;
 int trace_bcache_gc_start (struct cache_set*) ;
 int wake_up_allocators (struct cache_set*) ;

__attribute__((used)) static void bch_btree_gc(struct cache_set *c)
{
 int ret;
 struct gc_stat stats;
 struct closure writes;
 struct btree_op op;
 uint64_t start_time = local_clock();

 trace_bcache_gc_start(c);

 memset(&stats, 0, sizeof(struct gc_stat));
 closure_init_stack(&writes);
 bch_btree_op_init(&op, SHRT_MAX);

 btree_gc_start(c);


 do {
  ret = btree_root(gc_root, c, &op, &writes, &stats);
  closure_sync(&writes);
  cond_resched();

  if (ret == -EAGAIN)
   schedule_timeout_interruptible(msecs_to_jiffies
             (GC_SLEEP_MS));
  else if (ret)
   pr_warn("gc failed!");
 } while (ret && !test_bit(CACHE_SET_IO_DISABLE, &c->flags));

 bch_btree_gc_finish(c);
 wake_up_allocators(c);

 bch_time_stats_update(&c->btree_gc_time, start_time);

 stats.key_bytes *= sizeof(uint64_t);
 stats.data <<= 9;
 bch_update_bucket_in_use(c, &stats);
 memcpy(&c->gc_stats, &stats, sizeof(struct gc_stat));

 trace_bcache_gc_end(c);

 bch_moving_gc(c);
}
