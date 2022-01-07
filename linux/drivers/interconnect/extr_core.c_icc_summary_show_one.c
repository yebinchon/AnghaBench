
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct icc_node {int peak_bw; int avg_bw; int name; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static void icc_summary_show_one(struct seq_file *s, struct icc_node *n)
{
 if (!n)
  return;

 seq_printf(s, "%-30s %12u %12u\n",
     n->name, n->avg_bw, n->peak_bw);
}
