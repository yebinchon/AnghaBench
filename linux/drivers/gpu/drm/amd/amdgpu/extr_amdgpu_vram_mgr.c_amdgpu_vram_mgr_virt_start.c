
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {unsigned long num_pages; int start; } ;
struct drm_mm_node {unsigned long start; unsigned long size; } ;


 int max (int ,unsigned long) ;

__attribute__((used)) static void amdgpu_vram_mgr_virt_start(struct ttm_mem_reg *mem,
           struct drm_mm_node *node)
{
 unsigned long start;

 start = node->start + node->size;
 if (start > mem->num_pages)
  start -= mem->num_pages;
 else
  start = 0;
 mem->start = max(mem->start, start);
}
