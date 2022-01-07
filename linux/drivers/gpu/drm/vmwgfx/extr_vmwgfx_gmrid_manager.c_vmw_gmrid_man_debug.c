
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int dummy; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*) ;

__attribute__((used)) static void vmw_gmrid_man_debug(struct ttm_mem_type_manager *man,
    struct drm_printer *printer)
{
 drm_printf(printer, "No debug info available for the GMR id manager\n");
}
