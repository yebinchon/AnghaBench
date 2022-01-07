
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int lock; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int __fops_poll (struct file*,struct poll_table_struct*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static __poll_t fops_poll(struct file *file, struct poll_table_struct *wait)
{
 struct video_device *vdev = video_devdata(file);
 __poll_t res;

 mutex_lock(vdev->lock);
 res = __fops_poll(file, wait);
 mutex_unlock(vdev->lock);
 return res;
}
