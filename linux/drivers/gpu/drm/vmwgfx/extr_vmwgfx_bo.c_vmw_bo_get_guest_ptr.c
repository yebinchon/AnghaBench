
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mem_type; int start; } ;
struct ttm_buffer_object {TYPE_1__ mem; scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ offset; int gmrId; } ;
typedef TYPE_2__ SVGAGuestPtr ;


 int SVGA_GMR_FRAMEBUFFER ;
 scalar_t__ TTM_PL_VRAM ;

void vmw_bo_get_guest_ptr(const struct ttm_buffer_object *bo,
     SVGAGuestPtr *ptr)
{
 if (bo->mem.mem_type == TTM_PL_VRAM) {
  ptr->gmrId = SVGA_GMR_FRAMEBUFFER;
  ptr->offset = bo->offset;
 } else {
  ptr->gmrId = bo->mem.start;
  ptr->offset = 0;
 }
}
