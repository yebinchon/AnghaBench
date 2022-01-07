
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int LOCKDOWN_EFI_TEST ;
 int capable (int ) ;
 int security_locked_down (int ) ;

__attribute__((used)) static int efi_test_open(struct inode *inode, struct file *file)
{
 int ret = security_locked_down(LOCKDOWN_EFI_TEST);

 if (ret)
  return ret;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;





 return 0;
}
