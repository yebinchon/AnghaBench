
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* _opcode_stats_seq_start (struct seq_file*,int *) ;

__attribute__((used)) static void *_tx_opcode_stats_seq_start(struct seq_file *s, loff_t *pos)
{
 return _opcode_stats_seq_start(s, pos);
}
