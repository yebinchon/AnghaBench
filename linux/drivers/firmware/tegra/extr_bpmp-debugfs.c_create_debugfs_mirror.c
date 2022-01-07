
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int * debugfs_mirror; } ;
struct seqbuf {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int bpmp_populate_dir (struct tegra_bpmp*,struct seqbuf*,int *,int ) ;
 int * debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_remove_recursive (int *) ;
 int seqbuf_init (struct seqbuf*,void*,size_t) ;

__attribute__((used)) static int create_debugfs_mirror(struct tegra_bpmp *bpmp, void *buf,
     size_t bufsize, struct dentry *root)
{
 struct seqbuf seqbuf;
 int err;

 bpmp->debugfs_mirror = debugfs_create_dir("debug", root);
 if (!bpmp->debugfs_mirror)
  return -ENOMEM;

 seqbuf_init(&seqbuf, buf, bufsize);
 err = bpmp_populate_dir(bpmp, &seqbuf, bpmp->debugfs_mirror, 0);
 if (err < 0) {
  debugfs_remove_recursive(bpmp->debugfs_mirror);
  bpmp->debugfs_mirror = ((void*)0);
 }

 return err;
}
