
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct dss_device* private; } ;
struct dss_device {int dispc; } ;


 int dispc_dump_clocks (int ,struct seq_file*) ;
 int dss_dump_clocks (struct dss_device*,struct seq_file*) ;

__attribute__((used)) static int dss_debug_dump_clocks(struct seq_file *s, void *p)
{
 struct dss_device *dss = s->private;

 dss_dump_clocks(dss, s);
 dispc_dump_clocks(dss->dispc, s);
 return 0;
}
