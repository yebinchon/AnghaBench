
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;


 int EINVAL ;



__attribute__((used)) static loff_t scom_llseek(struct file *file, loff_t offset, int whence)
{
 switch (whence) {
 case 129:
  break;
 case 128:
  file->f_pos = offset;
  break;
 default:
  return -EINVAL;
 }

 return offset;
}
