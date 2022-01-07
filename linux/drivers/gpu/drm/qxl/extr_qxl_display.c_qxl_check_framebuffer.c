
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;
struct qxl_bo {TYPE_1__ surf; } ;


 int qxl_check_mode (struct qxl_device*,int ,int ) ;

__attribute__((used)) static int qxl_check_framebuffer(struct qxl_device *qdev,
     struct qxl_bo *bo)
{
 return qxl_check_mode(qdev, bo->surf.width, bo->surf.height);
}
