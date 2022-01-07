
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {scalar_t__ destroy; } ;


 scalar_t__ ttm_buffer_object_destroy ;

__attribute__((used)) static bool drm_is_gem_vram(struct ttm_buffer_object *bo)
{
 return (bo->destroy == ttm_buffer_object_destroy);
}
