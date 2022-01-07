
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp {int debugfs_mirror; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef int root_path_buf ;


 scalar_t__ IS_ERR (char const*) ;
 char* dentry_path (int ,char*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static const char *get_filename(struct tegra_bpmp *bpmp,
    const struct file *file, char *buf, int size)
{
 char root_path_buf[512];
 const char *root_path;
 const char *filename;
 size_t root_len;

 root_path = dentry_path(bpmp->debugfs_mirror, root_path_buf,
    sizeof(root_path_buf));
 if (IS_ERR(root_path))
  return ((void*)0);

 root_len = strlen(root_path);

 filename = dentry_path(file->f_path.dentry, buf, size);
 if (IS_ERR(filename))
  return ((void*)0);

 if (strlen(filename) < root_len ||
   strncmp(filename, root_path, root_len))
  return ((void*)0);

 filename += root_len;

 return filename;
}
