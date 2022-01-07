
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline struct dentry *
edac_debugfs_create_file(const char *name, umode_t mode, struct dentry *parent,
    void *data, const struct file_operations *fops) { return ((void*)0); }
