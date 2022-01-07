
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int start; int size; } ;
struct drm_mm {int dummy; } ;
typedef int nodes ;


 int drm_mm_init (struct drm_mm*,int ,int) ;
 int drm_mm_reserve_node (struct drm_mm*,struct drm_mm_node*) ;
 int memset (struct drm_mm_node*,int ,int) ;
 int pr_err (char*,int,int) ;
 int show_mm (struct drm_mm*) ;

__attribute__((used)) static int igt_debug(void *ignored)
{
 struct drm_mm mm;
 struct drm_mm_node nodes[2];
 int ret;





 drm_mm_init(&mm, 0, 4096);

 memset(nodes, 0, sizeof(nodes));
 nodes[0].start = 512;
 nodes[0].size = 1024;
 ret = drm_mm_reserve_node(&mm, &nodes[0]);
 if (ret) {
  pr_err("failed to reserve node[0] {start=%lld, size=%lld)\n",
         nodes[0].start, nodes[0].size);
  return ret;
 }

 nodes[1].size = 1024;
 nodes[1].start = 4096 - 512 - nodes[1].size;
 ret = drm_mm_reserve_node(&mm, &nodes[1]);
 if (ret) {
  pr_err("failed to reserve node[1] {start=%lld, size=%lld)\n",
         nodes[1].start, nodes[1].size);
  return ret;
 }

 show_mm(&mm);
 return 0;
}
