
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char const*,int) ;

__attribute__((used)) static void virtio_add_int(struct seq_file *m, const char *name,
       int value)
{
 seq_printf(m, "%-16s : %d\n", name, value);
}
