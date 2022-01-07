
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_fpriv {int ctx_id; } ;
struct virtio_gpu_device {int has_virgl_3d; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 int kfree (struct virtio_gpu_fpriv*) ;
 struct virtio_gpu_fpriv* kzalloc (int,int ) ;
 int strlen (char*) ;
 int virtio_gpu_context_create (struct virtio_gpu_device*,int ,char*) ;

int virtio_gpu_driver_open(struct drm_device *dev, struct drm_file *file)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct virtio_gpu_fpriv *vfpriv;
 int id;
 char dbgname[TASK_COMM_LEN];


 if (!vgdev->has_virgl_3d)
  return 0;


 vfpriv = kzalloc(sizeof(*vfpriv), GFP_KERNEL);
 if (!vfpriv)
  return -ENOMEM;

 get_task_comm(dbgname, current);
 id = virtio_gpu_context_create(vgdev, strlen(dbgname), dbgname);
 if (id < 0) {
  kfree(vfpriv);
  return id;
 }

 vfpriv->ctx_id = id;
 file->driver_priv = vfpriv;
 return 0;
}
