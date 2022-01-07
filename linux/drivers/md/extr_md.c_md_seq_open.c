
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int poll_event; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int atomic_read (int *) ;
 int md_event_count ;
 int md_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int md_seq_open(struct inode *inode, struct file *file)
{
 struct seq_file *seq;
 int error;

 error = seq_open(file, &md_seq_ops);
 if (error)
  return error;

 seq = file->private_data;
 seq->poll_event = atomic_read(&md_event_count);
 return error;
}
