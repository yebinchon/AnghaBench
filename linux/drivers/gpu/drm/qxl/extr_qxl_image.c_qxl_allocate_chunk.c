
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_drm_image {int chunk_list; } ;
struct qxl_drm_chunk {int head; int bo; } ;
struct qxl_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct qxl_drm_chunk*) ;
 struct qxl_drm_chunk* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int qxl_alloc_bo_reserved (struct qxl_device*,struct qxl_release*,unsigned int,int *) ;

__attribute__((used)) static int
qxl_allocate_chunk(struct qxl_device *qdev,
     struct qxl_release *release,
     struct qxl_drm_image *image,
     unsigned int chunk_size)
{
 struct qxl_drm_chunk *chunk;
 int ret;

 chunk = kmalloc(sizeof(struct qxl_drm_chunk), GFP_KERNEL);
 if (!chunk)
  return -ENOMEM;

 ret = qxl_alloc_bo_reserved(qdev, release, chunk_size, &chunk->bo);
 if (ret) {
  kfree(chunk);
  return ret;
 }

 list_add_tail(&chunk->head, &image->chunk_list);
 return 0;
}
