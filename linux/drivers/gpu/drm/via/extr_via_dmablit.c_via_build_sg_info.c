
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct drm_device {int pdev; } ;
struct TYPE_11__ {int state; int * bounce_buffer; int direction; } ;
typedef TYPE_1__ drm_via_sg_info_t ;
struct TYPE_12__ {int to_fb; int num_lines; int line_length; int mem_stride; int fb_stride; scalar_t__ fb_addr; scalar_t__ mem_addr; } ;
typedef TYPE_2__ drm_via_dmablit_t ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int PAGE_SIZE ;
 int abs (int) ;
 int dr_via_sg_init ;
 int via_alloc_desc_pages (TYPE_1__*) ;
 int via_free_sg_info (int ,TYPE_1__*) ;
 int via_lock_all_dma_pages (TYPE_1__*,TYPE_2__*) ;
 int via_map_blit_for_device (int ,TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static int
via_build_sg_info(struct drm_device *dev, drm_via_sg_info_t *vsg, drm_via_dmablit_t *xfer)
{
 int draw = xfer->to_fb;
 int ret = 0;

 vsg->direction = (draw) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
 vsg->bounce_buffer = ((void*)0);

 vsg->state = dr_via_sg_init;

 if (xfer->num_lines <= 0 || xfer->line_length <= 0) {
  DRM_ERROR("Zero size bitblt.\n");
  return -EINVAL;
 }
 if ((xfer->mem_stride - xfer->line_length) > 2*PAGE_SIZE) {
  DRM_ERROR("Too large system memory stride. Stride: %d, "
     "Length: %d\n", xfer->mem_stride, xfer->line_length);
  return -EINVAL;
 }

 if ((xfer->mem_stride == xfer->line_length) &&
    (xfer->fb_stride == xfer->line_length)) {
  xfer->mem_stride *= xfer->num_lines;
  xfer->line_length = xfer->mem_stride;
  xfer->fb_stride = xfer->mem_stride;
  xfer->num_lines = 1;
 }






 if (xfer->num_lines > 2048 || (xfer->num_lines*xfer->mem_stride > (2048*2048*4))) {
  DRM_ERROR("Too large PCI DMA bitblt.\n");
  return -EINVAL;
 }






 if (xfer->mem_stride < xfer->line_length ||
  abs(xfer->fb_stride) < xfer->line_length) {
  DRM_ERROR("Invalid frame-buffer / memory stride.\n");
  return -EINVAL;
 }
 if ((((unsigned long)xfer->mem_addr & 15) ||
       ((unsigned long)xfer->fb_addr & 3)) ||
    ((xfer->num_lines > 1) &&
    ((xfer->mem_stride & 15) || (xfer->fb_stride & 3)))) {
  DRM_ERROR("Invalid DRM bitblt alignment.\n");
  return -EINVAL;
 }


 if (0 != (ret = via_lock_all_dma_pages(vsg, xfer))) {
  DRM_ERROR("Could not lock DMA pages.\n");
  via_free_sg_info(dev->pdev, vsg);
  return ret;
 }

 via_map_blit_for_device(dev->pdev, xfer, vsg, 0);
 if (0 != (ret = via_alloc_desc_pages(vsg))) {
  DRM_ERROR("Could not allocate DMA descriptor pages.\n");
  via_free_sg_info(dev->pdev, vsg);
  return ret;
 }
 via_map_blit_for_device(dev->pdev, xfer, vsg, 1);

 return 0;
}
