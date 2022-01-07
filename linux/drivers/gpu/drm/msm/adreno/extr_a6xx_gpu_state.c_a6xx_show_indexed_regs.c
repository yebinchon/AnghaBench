
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;
struct a6xx_indexed_registers {int count; int name; } ;
struct a6xx_gpu_state_obj {int data; struct a6xx_indexed_registers* handle; } ;


 int drm_printf (struct drm_printer*,char*,int) ;
 int print_ascii85 (struct drm_printer*,int,int ) ;
 int print_name (struct drm_printer*,char*,int ) ;

__attribute__((used)) static void a6xx_show_indexed_regs(struct a6xx_gpu_state_obj *obj,
  struct drm_printer *p)
{
 const struct a6xx_indexed_registers *indexed = obj->handle;

 if (!indexed)
  return;

 print_name(p, "  - regs-name: ", indexed->name);
 drm_printf(p, "    dwords: %d\n", indexed->count);

 print_ascii85(p, indexed->count << 2, obj->data);
}
