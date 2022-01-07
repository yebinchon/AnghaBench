
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_plane {unsigned int index; int alpha; int plane; } ;
struct shmob_drm_device {int ddev; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct shmob_drm_plane* devm_kzalloc (int ,int,int ) ;
 int drm_plane_init (int ,int *,int,int *,int ,int ,int) ;
 int formats ;
 int shmob_drm_plane_funcs ;

int shmob_drm_plane_create(struct shmob_drm_device *sdev, unsigned int index)
{
 struct shmob_drm_plane *splane;
 int ret;

 splane = devm_kzalloc(sdev->dev, sizeof(*splane), GFP_KERNEL);
 if (splane == ((void*)0))
  return -ENOMEM;

 splane->index = index;
 splane->alpha = 255;

 ret = drm_plane_init(sdev->ddev, &splane->plane, 1,
        &shmob_drm_plane_funcs, formats,
        ARRAY_SIZE(formats), 0);

 return ret;
}
