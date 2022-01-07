
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_rect {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_clip_rects {int dummy; } ;
struct qxl_bo {int dummy; } ;


 int qxl_alloc_bo_reserved (struct qxl_device*,struct qxl_release*,int,struct qxl_bo**) ;

__attribute__((used)) static int alloc_clips(struct qxl_device *qdev,
         struct qxl_release *release,
         unsigned int num_clips,
         struct qxl_bo **clips_bo)
{
 int size = sizeof(struct qxl_clip_rects) + sizeof(struct qxl_rect) * num_clips;

 return qxl_alloc_bo_reserved(qdev, release, size, clips_bo);
}
