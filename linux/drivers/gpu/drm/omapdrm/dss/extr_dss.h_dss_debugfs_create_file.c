
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
struct dss_debugfs_entry {int dummy; } ;



__attribute__((used)) static inline struct dss_debugfs_entry *
dss_debugfs_create_file(struct dss_device *dss, const char *name,
   int (*show_fn)(struct seq_file *s, void *data),
   void *data)
{
 return ((void*)0);
}
