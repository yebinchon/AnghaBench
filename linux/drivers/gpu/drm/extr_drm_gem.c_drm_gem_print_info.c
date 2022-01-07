
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_printer {int dummy; } ;
struct drm_gem_object {char* name; char* size; TYPE_3__* dev; TYPE_1__* funcs; scalar_t__ import_attach; int vma_node; int refcount; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* gem_print_info ) (struct drm_printer*,unsigned int,struct drm_gem_object const*) ;} ;
struct TYPE_4__ {int (* print_info ) (struct drm_printer*,unsigned int,struct drm_gem_object const*) ;} ;


 int drm_printf_indent (struct drm_printer*,unsigned int,char*,char*) ;
 char* drm_vma_node_start (int *) ;
 char* kref_read (int *) ;
 int stub1 (struct drm_printer*,unsigned int,struct drm_gem_object const*) ;
 int stub2 (struct drm_printer*,unsigned int,struct drm_gem_object const*) ;

void drm_gem_print_info(struct drm_printer *p, unsigned int indent,
   const struct drm_gem_object *obj)
{
 drm_printf_indent(p, indent, "name=%d\n", obj->name);
 drm_printf_indent(p, indent, "refcount=%u\n",
     kref_read(&obj->refcount));
 drm_printf_indent(p, indent, "start=%08lx\n",
     drm_vma_node_start(&obj->vma_node));
 drm_printf_indent(p, indent, "size=%zu\n", obj->size);
 drm_printf_indent(p, indent, "imported=%s\n",
     obj->import_attach ? "yes" : "no");

 if (obj->funcs && obj->funcs->print_info)
  obj->funcs->print_info(p, indent, obj);
 else if (obj->dev->driver->gem_print_info)
  obj->dev->driver->gem_print_info(p, indent, obj);
}
