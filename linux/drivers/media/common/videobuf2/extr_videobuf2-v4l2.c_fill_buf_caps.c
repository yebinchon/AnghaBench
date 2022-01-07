
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vb2_queue {int io_modes; scalar_t__ supports_requests; } ;


 int V4L2_BUF_CAP_SUPPORTS_DMABUF ;
 int V4L2_BUF_CAP_SUPPORTS_MMAP ;
 int V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS ;
 int V4L2_BUF_CAP_SUPPORTS_REQUESTS ;
 int V4L2_BUF_CAP_SUPPORTS_USERPTR ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;

__attribute__((used)) static void fill_buf_caps(struct vb2_queue *q, u32 *caps)
{
 *caps = V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS;
 if (q->io_modes & VB2_MMAP)
  *caps |= V4L2_BUF_CAP_SUPPORTS_MMAP;
 if (q->io_modes & VB2_USERPTR)
  *caps |= V4L2_BUF_CAP_SUPPORTS_USERPTR;
 if (q->io_modes & VB2_DMABUF)
  *caps |= V4L2_BUF_CAP_SUPPORTS_DMABUF;




}
