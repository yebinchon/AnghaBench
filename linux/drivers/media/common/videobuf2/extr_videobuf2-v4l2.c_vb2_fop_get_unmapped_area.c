
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct file {int dummy; } ;


 unsigned long vb2_get_unmapped_area (int ,unsigned long,unsigned long,unsigned long,unsigned long) ;
 struct video_device* video_devdata (struct file*) ;

unsigned long vb2_fop_get_unmapped_area(struct file *file, unsigned long addr,
  unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct video_device *vdev = video_devdata(file);

 return vb2_get_unmapped_area(vdev->queue, addr, len, pgoff, flags);
}
