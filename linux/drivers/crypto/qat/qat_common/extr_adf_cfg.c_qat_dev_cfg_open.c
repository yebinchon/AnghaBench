
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int qat_dev_cfg_sops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int qat_dev_cfg_open(struct inode *inode, struct file *file)
{
 int ret = seq_open(file, &qat_dev_cfg_sops);

 if (!ret) {
  struct seq_file *seq_f = file->private_data;

  seq_f->private = inode->i_private;
 }
 return ret;
}
