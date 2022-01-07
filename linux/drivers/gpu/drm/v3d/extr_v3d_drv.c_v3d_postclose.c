
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_file_priv {int * sched_entity; } ;
struct drm_file {struct v3d_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;
typedef enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;


 int V3D_MAX_QUEUES ;
 int drm_sched_entity_destroy (int *) ;
 int kfree (struct v3d_file_priv*) ;

__attribute__((used)) static void
v3d_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct v3d_file_priv *v3d_priv = file->driver_priv;
 enum v3d_queue q;

 for (q = 0; q < V3D_MAX_QUEUES; q++) {
  drm_sched_entity_destroy(&v3d_priv->sched_entity[q]);
 }

 kfree(v3d_priv);
}
