
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
typedef size_t loff_t ;


 int SEQ_SKIP ;
 int hfi1_sps_ints () ;
 int hfi1_stats ;
 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;

__attribute__((used)) static int _driver_stats_seq_show(struct seq_file *s, void *v)
{
 loff_t *spos = v;
 char *buffer;
 u64 *stats = (u64 *)&hfi1_stats;
 size_t sz = seq_get_buf(s, &buffer);

 if (sz < sizeof(u64))
  return SEQ_SKIP;

 if (*spos == 0)
  *(u64 *)buffer = hfi1_sps_ints();
 else
  *(u64 *)buffer = stats[*spos];
 seq_commit(s, sizeof(u64));
 return 0;
}
