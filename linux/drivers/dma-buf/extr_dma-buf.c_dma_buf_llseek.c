
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dma_buf* private_data; } ;
struct dma_buf {scalar_t__ size; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 int SEEK_END ;
 int SEEK_SET ;
 int is_dma_buf_file (struct file*) ;

__attribute__((used)) static loff_t dma_buf_llseek(struct file *file, loff_t offset, int whence)
{
 struct dma_buf *dmabuf;
 loff_t base;

 if (!is_dma_buf_file(file))
  return -EBADF;

 dmabuf = file->private_data;




 if (whence == SEEK_END)
  base = dmabuf->size;
 else if (whence == SEEK_SET)
  base = 0;
 else
  return -EINVAL;

 if (offset != 0)
  return -EINVAL;

 return base + offset;
}
