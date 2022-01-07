
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct picolcd_data {int dummy; } ;


 scalar_t__ picolcd_fbinfo (struct picolcd_data*) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static int picolcd_debug_reset_show(struct seq_file *f, void *p)
{
 if (picolcd_fbinfo((struct picolcd_data *)f->private))
  seq_printf(f, "all fb\n");
 else
  seq_printf(f, "all\n");
 return 0;
}
