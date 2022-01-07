
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {int lock; scalar_t__ name; scalar_t__ exp_name; int file; scalar_t__ size; } ;


 scalar_t__ file_count (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static void dma_buf_show_fdinfo(struct seq_file *m, struct file *file)
{
 struct dma_buf *dmabuf = file->private_data;

 seq_printf(m, "size:\t%zu\n", dmabuf->size);

 seq_printf(m, "count:\t%ld\n", file_count(dmabuf->file) - 1);
 seq_printf(m, "exp_name:\t%s\n", dmabuf->exp_name);
 mutex_lock(&dmabuf->lock);
 if (dmabuf->name)
  seq_printf(m, "name:\t%s\n", dmabuf->name);
 mutex_unlock(&dmabuf->lock);
}
