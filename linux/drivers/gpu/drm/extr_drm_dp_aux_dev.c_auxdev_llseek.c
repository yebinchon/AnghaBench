
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int AUX_MAX_OFFSET ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t auxdev_llseek(struct file *file, loff_t offset, int whence)
{
 return fixed_size_llseek(file, offset, whence, AUX_MAX_OFFSET);
}
