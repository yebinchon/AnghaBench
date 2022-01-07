
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_printer {int dummy; } ;
struct a6xx_debugbus_block {int count; int name; } ;


 int drm_printf (struct drm_printer*,char*,int) ;
 int print_ascii85 (struct drm_printer*,int,int *) ;
 int print_name (struct drm_printer*,char*,int ) ;

__attribute__((used)) static void a6xx_show_debugbus_block(const struct a6xx_debugbus_block *block,
  u32 *data, struct drm_printer *p)
{
 if (block) {
  print_name(p, "  - debugbus-block: ", block->name);





  drm_printf(p, "    count: %d\n", block->count << 1);

  print_ascii85(p, block->count << 3, data);
 }
}
