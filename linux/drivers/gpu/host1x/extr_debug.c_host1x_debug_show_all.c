
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct output {struct seq_file* ctx; int fn; } ;


 int show_all (int ,struct output*,int) ;
 int write_to_seqfile ;

__attribute__((used)) static int host1x_debug_show_all(struct seq_file *s, void *unused)
{
 struct output o = {
  .fn = write_to_seqfile,
  .ctx = s
 };

 show_all(s->private, &o, 1);

 return 0;
}
