
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_rect {int bottom; scalar_t__ top; int right; scalar_t__ left; } ;
struct qxl_device {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;
struct qxl_bo {TYPE_1__ surf; } ;


 int ERESTARTSYS ;
 int qxl_io_update_area (struct qxl_device*,struct qxl_bo*,struct qxl_rect*) ;

__attribute__((used)) static int qxl_update_surface(struct qxl_device *qdev, struct qxl_bo *surf)
{
 struct qxl_rect rect;
 int ret;



 rect.left = 0;
 rect.right = surf->surf.width;
 rect.top = 0;
 rect.bottom = surf->surf.height;
retry:
 ret = qxl_io_update_area(qdev, surf, &rect);
 if (ret == -ERESTARTSYS)
  goto retry;
 return ret;
}
