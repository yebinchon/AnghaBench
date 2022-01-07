
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char const*,char*) ;

__attribute__((used)) static void virtio_add_bool(struct seq_file *m, const char *name,
        bool value)
{
 seq_printf(m, "%-16s : %s\n", name, value ? "yes" : "no");
}
