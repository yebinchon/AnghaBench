
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* queue; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {scalar_t__ owner; } ;



__attribute__((used)) static inline bool vb2_queue_is_busy(struct video_device *vdev, struct file *file)
{
 return vdev->queue->owner && vdev->queue->owner != file->private_data;
}
