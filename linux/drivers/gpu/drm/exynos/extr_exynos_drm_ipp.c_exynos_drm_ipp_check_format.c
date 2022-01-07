
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_drm_ipp_task {int dev; int ipp; } ;
struct exynos_drm_ipp_formats {int num_limits; int limits; } ;
struct TYPE_3__ {unsigned int width; scalar_t__ height; unsigned int* pitch; int * gem_id; int fourcc; int modifier; } ;
struct exynos_drm_ipp_buffer {int rect; TYPE_1__ buf; TYPE_2__* format; } ;
struct TYPE_4__ {int num_planes; unsigned int* cpp; int hsub; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int DRM_DEV_DEBUG_DRIVER (int ,char*,struct exynos_drm_ipp_task*,char*) ;
 int DRM_EXYNOS_IPP_FORMAT_DESTINATION ;
 int DRM_EXYNOS_IPP_FORMAT_SOURCE ;
 int EINVAL ;
 int ENOENT ;
 struct exynos_drm_ipp_formats* __ipp_format_get (int ,int ,int ,int ) ;
 TYPE_2__* drm_format_info (int ) ;
 int exynos_drm_ipp_check_scale_limits (int *,int *,int ,int ,int) ;
 int exynos_drm_ipp_check_size_limits (struct exynos_drm_ipp_buffer*,int ,int ,int,int) ;

__attribute__((used)) static int exynos_drm_ipp_check_format(struct exynos_drm_ipp_task *task,
           struct exynos_drm_ipp_buffer *buf,
           struct exynos_drm_ipp_buffer *src,
           struct exynos_drm_ipp_buffer *dst,
           bool rotate, bool swap)
{
 const struct exynos_drm_ipp_formats *fmt;
 int ret, i;

 fmt = __ipp_format_get(task->ipp, buf->buf.fourcc, buf->buf.modifier,
          buf == src ? DRM_EXYNOS_IPP_FORMAT_SOURCE :
         DRM_EXYNOS_IPP_FORMAT_DESTINATION);
 if (!fmt) {
  DRM_DEV_DEBUG_DRIVER(task->dev,
         "Task %pK: %s format not supported\n",
         task, buf == src ? "src" : "dst");
  return -EINVAL;
 }


 if (buf->buf.width == 0 || buf->buf.height == 0)
  return -EINVAL;

 buf->format = drm_format_info(buf->buf.fourcc);
 for (i = 0; i < buf->format->num_planes; i++) {
  unsigned int width = (i == 0) ? buf->buf.width :
        DIV_ROUND_UP(buf->buf.width, buf->format->hsub);

  if (buf->buf.pitch[i] == 0)
   buf->buf.pitch[i] = width * buf->format->cpp[i];
  if (buf->buf.pitch[i] < width * buf->format->cpp[i])
   return -EINVAL;
  if (!buf->buf.gem_id[i])
   return -ENOENT;
 }


 if (buf->format->num_planes > 2 &&
     buf->buf.pitch[1] != buf->buf.pitch[2])
  return -EINVAL;


 ret = exynos_drm_ipp_check_size_limits(buf, fmt->limits,
            fmt->num_limits,
            rotate,
            buf == dst ? swap : 0);
 if (ret)
  return ret;
 ret = exynos_drm_ipp_check_scale_limits(&src->rect, &dst->rect,
      fmt->limits,
      fmt->num_limits, swap);
 return ret;
}
