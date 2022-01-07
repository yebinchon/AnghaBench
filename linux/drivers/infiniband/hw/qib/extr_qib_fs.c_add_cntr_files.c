
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unit ;
struct super_block {struct dentry* s_root; } ;
struct qib_devdata {int unit; int num_pports; int flags; } ;
struct dentry {int dummy; } ;


 int QIB_HAS_QSFP ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int S_IXUGO ;
 int * cntr_ops ;
 int create_file (char*,int,struct dentry*,struct dentry**,int *,struct qib_devdata*) ;
 int flash_ops ;
 int * portcntr_ops ;
 int pr_err (char*,char*,...) ;
 int * qsfp_ops ;
 int simple_dir_operations ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int add_cntr_files(struct super_block *sb, struct qib_devdata *dd)
{
 struct dentry *dir, *tmp;
 char unit[10];
 int ret, i;


 snprintf(unit, sizeof(unit), "%u", dd->unit);
 ret = create_file(unit, S_IFDIR|S_IRUGO|S_IXUGO, sb->s_root, &dir,
     &simple_dir_operations, dd);
 if (ret) {
  pr_err("create_file(%s) failed: %d\n", unit, ret);
  goto bail;
 }


 ret = create_file("counters", S_IFREG|S_IRUGO, dir, &tmp,
     &cntr_ops[0], dd);
 if (ret) {
  pr_err("create_file(%s/counters) failed: %d\n",
         unit, ret);
  goto bail;
 }
 ret = create_file("counter_names", S_IFREG|S_IRUGO, dir, &tmp,
     &cntr_ops[1], dd);
 if (ret) {
  pr_err("create_file(%s/counter_names) failed: %d\n",
         unit, ret);
  goto bail;
 }
 ret = create_file("portcounter_names", S_IFREG|S_IRUGO, dir, &tmp,
     &portcntr_ops[0], dd);
 if (ret) {
  pr_err("create_file(%s/%s) failed: %d\n",
         unit, "portcounter_names", ret);
  goto bail;
 }
 for (i = 1; i <= dd->num_pports; i++) {
  char fname[24];

  sprintf(fname, "port%dcounters", i);

  ret = create_file(fname, S_IFREG|S_IRUGO, dir, &tmp,
      &portcntr_ops[i], dd);
  if (ret) {
   pr_err("create_file(%s/%s) failed: %d\n",
    unit, fname, ret);
   goto bail;
  }
  if (!(dd->flags & QIB_HAS_QSFP))
   continue;
  sprintf(fname, "qsfp%d", i);
  ret = create_file(fname, S_IFREG|S_IRUGO, dir, &tmp,
      &qsfp_ops[i - 1], dd);
  if (ret) {
   pr_err("create_file(%s/%s) failed: %d\n",
    unit, fname, ret);
   goto bail;
  }
 }

 ret = create_file("flash", S_IFREG|S_IWUSR|S_IRUGO, dir, &tmp,
     &flash_ops, dd);
 if (ret)
  pr_err("create_file(%s/flash) failed: %d\n",
   unit, ret);
bail:
 return ret;
}
