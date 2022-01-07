
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qxl_device {int dummy; } ;
struct qxl_bo {int is_primary; } ;
struct drm_plane_state {TYPE_2__* fb; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_4__ {int * obj; } ;
struct TYPE_3__ {struct qxl_device* dev_private; } ;


 struct qxl_bo* gem_to_qxl_bo (int ) ;
 int qxl_io_destroy_primary (struct qxl_device*) ;

__attribute__((used)) static void qxl_primary_atomic_disable(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct qxl_device *qdev = plane->dev->dev_private;

 if (old_state->fb) {
  struct qxl_bo *bo = gem_to_qxl_bo(old_state->fb->obj[0]);

  if (bo->is_primary) {
   qxl_io_destroy_primary(qdev);
   bo->is_primary = 0;
  }
 }
}
