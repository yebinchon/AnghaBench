
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmob_drm_plane {int index; int * format; } ;
struct shmob_drm_device {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;


 int LDBnBSIFR (int ) ;
 int lcdc_write (struct shmob_drm_device*,int ,int ) ;
 struct shmob_drm_plane* to_shmob_plane (struct drm_plane*) ;

__attribute__((used)) static int shmob_drm_plane_disable(struct drm_plane *plane,
       struct drm_modeset_acquire_ctx *ctx)
{
 struct shmob_drm_plane *splane = to_shmob_plane(plane);
 struct shmob_drm_device *sdev = plane->dev->dev_private;

 splane->format = ((void*)0);

 lcdc_write(sdev, LDBnBSIFR(splane->index), 0);
 return 0;
}
