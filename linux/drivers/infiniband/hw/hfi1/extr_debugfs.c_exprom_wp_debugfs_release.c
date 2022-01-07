
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hfi1_pportdata {int dd; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int exprom_in_use ;
 scalar_t__ exprom_wp_disabled ;
 int exprom_wp_set (int ,int) ;
 struct hfi1_pportdata* private2ppd (struct file*) ;

__attribute__((used)) static int exprom_wp_debugfs_release(struct inode *in, struct file *fp)
{
 struct hfi1_pportdata *ppd = private2ppd(fp);

 if (exprom_wp_disabled)
  exprom_wp_set(ppd->dd, 0);
 clear_bit(0, &exprom_in_use);

 return 0;
}
