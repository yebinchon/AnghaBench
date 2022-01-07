
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {struct uhid_device** outq; } ;
struct inode {int dummy; } ;
struct file {struct uhid_device* private_data; } ;


 unsigned int UHID_BUFSIZE ;
 int kfree (struct uhid_device*) ;
 int uhid_dev_destroy (struct uhid_device*) ;

__attribute__((used)) static int uhid_char_release(struct inode *inode, struct file *file)
{
 struct uhid_device *uhid = file->private_data;
 unsigned int i;

 uhid_dev_destroy(uhid);

 for (i = 0; i < UHID_BUFSIZE; ++i)
  kfree(uhid->outq[i]);

 kfree(uhid);

 return 0;
}
