
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int exprom_in_use ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int exprom_wp_debugfs_open(struct inode *in, struct file *fp)
{
 if (test_and_set_bit(0, &exprom_in_use))
  return -EBUSY;

 return 0;
}
