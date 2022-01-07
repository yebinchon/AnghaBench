
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;
struct a6xx_gpu_state_obj {int data; int handle; } ;
struct a6xx_gpu_state {int nr_debugbus; int nr_cx_debugbus; struct a6xx_gpu_state_obj* cx_debugbus; struct a6xx_gpu_state_obj* vbif_debugbus; struct a6xx_gpu_state_obj* debugbus; } ;


 int VBIF_DEBUGBUS_BLOCK_SIZE ;
 int a6xx_show_debugbus_block (int ,int ,struct drm_printer*) ;
 int drm_printf (struct drm_printer*,char*,int) ;
 int drm_puts (struct drm_printer*,char*) ;
 int print_ascii85 (struct drm_printer*,int,int ) ;

__attribute__((used)) static void a6xx_show_debugbus(struct a6xx_gpu_state *a6xx_state,
  struct drm_printer *p)
{
 int i;

 for (i = 0; i < a6xx_state->nr_debugbus; i++) {
  struct a6xx_gpu_state_obj *obj = &a6xx_state->debugbus[i];

  a6xx_show_debugbus_block(obj->handle, obj->data, p);
 }

 if (a6xx_state->vbif_debugbus) {
  struct a6xx_gpu_state_obj *obj = a6xx_state->vbif_debugbus;

  drm_puts(p, "  - debugbus-block: A6XX_DBGBUS_VBIF\n");
  drm_printf(p, "    count: %d\n", VBIF_DEBUGBUS_BLOCK_SIZE);


  print_ascii85(p, VBIF_DEBUGBUS_BLOCK_SIZE << 2, obj->data);
 }

 for (i = 0; i < a6xx_state->nr_cx_debugbus; i++) {
  struct a6xx_gpu_state_obj *obj = &a6xx_state->cx_debugbus[i];

  a6xx_show_debugbus_block(obj->handle, obj->data, p);
 }
}
