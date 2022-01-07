
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;
struct a6xx_gpu_state_obj {int data; struct a6xx_dbgahb_cluster* handle; } ;
struct a6xx_dbgahb_cluster {int count; int registers; int name; } ;


 int a6xx_show_cluster_data (int ,int ,int ,struct drm_printer*) ;
 int print_name (struct drm_printer*,char*,int ) ;

__attribute__((used)) static void a6xx_show_dbgahb_cluster(struct a6xx_gpu_state_obj *obj,
  struct drm_printer *p)
{
 const struct a6xx_dbgahb_cluster *dbgahb = obj->handle;

 if (dbgahb) {
  print_name(p, "  - cluster-name: ", dbgahb->name);
  a6xx_show_cluster_data(dbgahb->registers, dbgahb->count,
   obj->data, p);
 }
}
