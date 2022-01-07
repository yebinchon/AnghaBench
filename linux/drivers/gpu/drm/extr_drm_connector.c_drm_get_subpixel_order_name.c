
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum subpixel_order { ____Placeholder_subpixel_order } subpixel_order ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* drm_subpixel_enum_list ;

const char *drm_get_subpixel_order_name(enum subpixel_order order)
{
 return drm_subpixel_enum_list[order].name;
}
