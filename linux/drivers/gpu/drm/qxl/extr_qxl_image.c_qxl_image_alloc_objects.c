
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_image {int dummy; } ;
struct qxl_drm_image {int bo; int chunk_list; } ;
struct qxl_device {int dummy; } ;
struct qxl_data_chunk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct qxl_drm_image*) ;
 struct qxl_drm_image* kmalloc (int,int ) ;
 int qxl_alloc_bo_reserved (struct qxl_device*,struct qxl_release*,int,int *) ;
 int qxl_allocate_chunk (struct qxl_device*,struct qxl_release*,struct qxl_drm_image*,int) ;
 int qxl_bo_unref (int *) ;

int
qxl_image_alloc_objects(struct qxl_device *qdev,
   struct qxl_release *release,
   struct qxl_drm_image **image_ptr,
   int height, int stride)
{
 struct qxl_drm_image *image;
 int ret;

 image = kmalloc(sizeof(struct qxl_drm_image), GFP_KERNEL);
 if (!image)
  return -ENOMEM;

 INIT_LIST_HEAD(&image->chunk_list);

 ret = qxl_alloc_bo_reserved(qdev, release, sizeof(struct qxl_image), &image->bo);
 if (ret) {
  kfree(image);
  return ret;
 }

 ret = qxl_allocate_chunk(qdev, release, image, sizeof(struct qxl_data_chunk) + stride * height);
 if (ret) {
  qxl_bo_unref(&image->bo);
  kfree(image);
  return ret;
 }
 *image_ptr = image;
 return 0;
}
