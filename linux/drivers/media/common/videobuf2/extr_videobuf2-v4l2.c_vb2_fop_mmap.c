
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct video_device {int queue; } ;
struct file {int dummy; } ;


 int vb2_mmap (int ,struct vm_area_struct*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_fop_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_device *vdev = video_devdata(file);

 return vb2_mmap(vdev->queue, vma);
}
