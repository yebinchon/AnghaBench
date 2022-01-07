
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int file; } ;


 int EINVAL ;
 int fd_install (int,int ) ;
 int get_unused_fd_flags (int) ;

int dma_buf_fd(struct dma_buf *dmabuf, int flags)
{
 int fd;

 if (!dmabuf || !dmabuf->file)
  return -EINVAL;

 fd = get_unused_fd_flags(flags);
 if (fd < 0)
  return fd;

 fd_install(fd, dmabuf->file);

 return fd;
}
