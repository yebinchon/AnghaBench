
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_scan {int color; int alignment; int size; int hit_end; int hit_start; } ;


 int pr_info (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void show_scan(const struct drm_mm_scan *scan)
{
 pr_info("scan: hit [%llx, %llx], size=%lld, align=%lld, color=%ld\n",
  scan->hit_start, scan->hit_end,
  scan->size, scan->alignment, scan->color);
}
