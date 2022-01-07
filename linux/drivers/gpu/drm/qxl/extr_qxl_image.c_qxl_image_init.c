
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qxl_release {int dummy; } ;
struct qxl_drm_image {int dummy; } ;
struct qxl_device {int dummy; } ;


 int qxl_image_init_helper (struct qxl_device*,struct qxl_release*,struct qxl_drm_image*,int const*,int,int,int,int ,int) ;

int qxl_image_init(struct qxl_device *qdev,
       struct qxl_release *release,
       struct qxl_drm_image *dimage,
       const uint8_t *data,
       int x, int y, int width, int height,
       int depth, int stride)
{
 data += y * stride + x * (depth / 8);
 return qxl_image_init_helper(qdev, release, dimage, data,
           width, height, depth, 0, stride);
}
