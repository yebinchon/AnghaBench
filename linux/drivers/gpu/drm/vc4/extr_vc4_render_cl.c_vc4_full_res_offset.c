
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct vc4_exec_info {TYPE_1__* args; } ;
struct drm_vc4_submit_rcl_surface {scalar_t__ offset; } ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct TYPE_2__ {int width; } ;


 int DIV_ROUND_UP (int ,int) ;
 int VC4_TILE_BUFFER_SIZE ;

__attribute__((used)) static uint32_t vc4_full_res_offset(struct vc4_exec_info *exec,
        struct drm_gem_cma_object *bo,
        struct drm_vc4_submit_rcl_surface *surf,
        uint8_t x, uint8_t y)
{
 return bo->paddr + surf->offset + VC4_TILE_BUFFER_SIZE *
  (DIV_ROUND_UP(exec->args->width, 32) * y + x);
}
